<?php
function newQuestion($quizId, $question, $reponse, $digit, $order) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO questions(quiz_id, question, multiple_answers, digits, ordered, creation_date) VALUES(:quiz_id, :question, :reponse, :digit, :order, now())');
    $data->bindParam(':quiz_id', $quizId, PDO::PARAM_INT);
    $data->bindParam(':question', $question, PDO::PARAM_STR);
    $data->bindParam(':reponse', $reponse, PDO::PARAM_STR);
    $data->bindParam(':digit', $digit, PDO::PARAM_STR);
    $data->bindParam(':order', $order, PDO::PARAM_STR);
    $data->execute();
    return $bdd->lastInsertId();
}