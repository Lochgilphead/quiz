<?php
function newQuestion($quizId, $question, $reponse) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO questions(quiz_id, question, multiple_answers, creation_date) VALUES(:quiz_id, :question, :reponse, now())');
    $data->bindParam(':quiz_id', $quizId, PDO::PARAM_INT);
    $data->bindParam(':question', $question, PDO::PARAM_STR);
    $data->bindParam(':reponse', $reponse, PDO::PARAM_STR);
    $data->execute();
    return $bdd->lastInsertId();
}