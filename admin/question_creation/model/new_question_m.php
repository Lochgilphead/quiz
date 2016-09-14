<?php
function newQuestion($quizId, $question) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO questions(quiz_id, question, creation_date) VALUES(:quiz_id, :question, now())');
    $data->bindParam(':quiz_id', $quizId, PDO::PARAM_INT);
    $data->bindParam(':question', $question, PDO::PARAM_STR);
    $data->execute();
    return $bdd->lastInsertId();
}