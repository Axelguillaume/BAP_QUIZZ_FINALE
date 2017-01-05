<?php

    class Controller
    {
        function initAction($param = null)
        {
            $pdo = new PDO('mysql:host=localhost;dbname=quizz','root','root');
            $pdo->exec("set names utf8");

            $result = $pdo->query('SELECT * FROM theme')->fetchAll(PDO::FETCH_ASSOC);

            echo json_encode(array(
                'themes' => $result
            ));
        }

        function getQuestionAction()
        {
            $id_theme = $_POST['id_theme'];
            $difficulty = $_POST['difficulty'];
            $pdo = new PDO('mysql:host=localhost;dbname=quizz','root','root');
            $pdo->exec('set names utf8');
            $sql = 'SELECT *
                FROM question q
                WHERE q.id_theme = '.$id_theme.'
                AND q.difficulty = '.$difficulty.'
                ORDER BY rand() LIMIT 1';
            $result = $pdo->query($sql);
            if ($result) {
                $result = $result->fetchAll(PDO::FETCH_ASSOC)[0];
                $sql = 'SELECT *
                    FROM answer a
                    WHERE id_question = "'.$result['id_question'].'"';
                $result2 = $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
            }

            echo json_encode(array(
                'question' => $result,
                'reponse' => $result2
            ));
        }
    }


    $controller = new Controller();
    $action = $_POST['action'];

    if (method_exists($controller, $action.'Action')) {
        call_user_func_array(array($controller, $action.'Action'),array());
    }
?>
