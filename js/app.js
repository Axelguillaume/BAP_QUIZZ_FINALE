
$(document).ready(function(){

    // initialisation application
    $('.container-question, .container, .container-explanation, .row-btn-next').hide();

    // déclaration des variables de l'app
    var stopIfFalse = false;
    var nb_question = 1;
    var id_theme = null;
    var theme = null;
    var timerInterval = null;
    var timer = 30;
    var validResponse = null;
    var type = null;
    var win = true;
    var explanation = null;
    function getDifficulty()
    {
        if (nb_question < 4) {
            return 1;
        } else if (nb_question < 7) {
            return 2;
        } else if (nb_question < 10) {
            return 3;
        } else {
            return 4;
        }
    }

    // appel ajax pour récuperer la liste des themes
    $.ajax({
      type: 'POST',
      url: 'app/controller.php',
      data: {'action' : 'init', 'data' : null},
      success: function(data){
          if (data)
          {
              data.themes.forEach(function(theme){
                  $('ul').append('<li id_theme="'+theme.id_theme+'">'+theme.name+'</li>');
              });
              //$('li').click = themeChoice();
              $('li').click(function(){
                  id_theme = $(this).attr('id_theme');
                  $('.categorie').html($(this).html());
                  $('#theme-list, .container-intro').fadeOut(function(){
                        $('.container-question, .container').fadeIn(200);
                  });
                  getQuestion(id_theme, getDifficulty);
              });
          }
      },
      dataType: 'json'
    });


    $('.btn-reponse').click(function(){
        if ($(this).hasClass('select')) {
            $(this).removeClass('select');
        } else {
            $(this).addClass('select');
        }
    });
    $('.btn-valider').click(function(){
        var reponse = new Array();
        for (i=0; i<4; i++) {
            if ($('.btn-reponse').eq(i).hasClass('select')) {
                reponse.push($('.btn-reponse').eq(i).attr('id_answer'));
            }
        }
        
        if (reponse.length < 1 && $('.chrono').html() != '0') {
            return false;
        } else {
            clearInterval(timerInterval);
            var win = isWin(reponse);
            if (win == true && stopIfFalse == true) {
                nb_question = 10;
            }
            displayExplanation(reponse); 
        }
    });
    $('.btn-next').click(function(){
        if (nb_question < 10) {
            nb_question++;
            $('.container-explanation').fadeOut(); 
            $('.row-btn-next').fadeOut(function(){
                getQuestion(id_theme, getDifficulty()); 
            });
        } else {
           
        }
    });

    // requete ajax pour recuperer une question et ses datas
    function getQuestion(id_theme, difficulty)
    {
        $.ajax({
            type: 'POST',
            url: 'app/controller.php',
            data: {
                'action' : 'getQuestion',
                'id_theme' : id_theme,
                'difficulty' : difficulty
            },
            success: function(data){
                console.log(data);
                initQuestion(data);
            },
            dataType: 'json'
        });
    }

    // initialisation les variables affiché
    // initialisation les variabbles de réponse correct
    // initialisation du compteur
    // animation d'affichage
    function initQuestion(data)
    {
        type = data.question.type;
        validResponse = new Array();
        for (i=0; i<4; i++) {
            $('.btn-reponse').eq(i)
            .html(data.reponse[i].answer)
            .attr('id_answer',data.reponse[i].id_answer);
            if (data.reponse[i].valide == 1) {
                validResponse.push(data.reponse[i].id_answer * 1);
            }
        }
        var question = data.question.question;
        question += (type == 'checkbox') ? '   (QCM)' : '';
        var width = nb_question*10+'%';
        $('.progress-bar').css('width',nb_question*10+'%');
        $('.pourcentage').html(nb_question*10 + '%');
        explanation = data.question.explanation;
        $('.question').html(question);
        $('#nb_question').html(nb_question);
        $('.btn-reponse').removeClass('select').removeClass('btn-reponse-green');
        timer = 30;
        $('.chrono').html(timer);
        $('.container-question, .container, .btn-reponse').fadeIn(200);
        $('.container-question > .row').eq(4).fadeIn();
        timerInterval = setInterval(timerCompt,1000);
    }

    function timerCompt()
    {
        timer--;
        $('.chrono').html(timer);
        if (timer == 0) {
            $('.btn-valider').click();
            clearInterval(timerInterval);
        }
    }

    function isWin(reponse)
    {
        win = true;
        reponse.forEach(function(rep){
            if ($.inArray(rep * 1, validResponse) === false) {
                win = false;
            }
        });
        return win
    }

    function displayExplanation(reponse)
    {
        for (i=0; i<4; i++) {
            if ($.inArray($('.btn-reponse').eq(i).attr('id_answer')*1, validResponse) != -1) {
                $('.btn-reponse').eq(i).addClass('btn-reponse-green').removeClass('select');
            }
        }
        setTimeout(function(){
            $('.container-question > .row').eq(4).fadeOut(function(){
                $('.content-explanation').html(explanation);
                $('.container-explanation').fadeIn();
                if (nb_question < 10) {
                    $('.row-btn-next').fadeIn();
                } else {
                    $('.row-btn-next').html('Fin').fadeIn();
                }
            });
        },2000);
    }
});
