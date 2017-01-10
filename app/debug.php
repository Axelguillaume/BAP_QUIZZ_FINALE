<?php

if (!empty($_POST)) {
    $sql = 'INSERT INTO question(question, type, explanation, difficulty) VALUES (';
    $sql .= '"'.$_POST['question'].'", ';
    $sql .= '"'.$_POST['type'].'", ';
    $sql .= '"'.$_POST['explanation'].'", ';
    $sql .= '"'.$_POST['difficulty'].'")';
    var_dump($sql);
    $pdo = new PDO('mysql:host=localhost;dbname=quizz','root','');
    $pdo->query($sql);
}

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <form action="#" method="POST">
            <input type="text" name="question" value="éàèù"/>
            <input type="text" name="type" value="éàèù"/>
            <input type="text" name="explanation" value="éàèù"/>
            <input type="number" name="difficulty" value="1"/>
            <input type="submit" value="save"/>
        </form>
    </body>
</html>
