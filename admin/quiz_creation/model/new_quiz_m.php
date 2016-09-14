<?php
function newQuiz($quizTitle) {
    global $bdd;
    $data = $bdd->prepare('insert into quizzes(quiz, creation_date) values(:quizTitle, now())');
    $data->bindParam(':quizTitle', $quizTitle, PDO::PARAM_STR);
    $data->execute();
    return $bdd->lastInsertId();    
}

$last_insert = newQuiz($quizTitle);
