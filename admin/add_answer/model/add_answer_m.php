<?php
function addAnswer($quizId, $questId, $answer, $result){
    global $bdd;
    $data = $bdd->prepare('INSERT INTO answers (question_id, quiz_id, answer, result, creation_date) VALUES (:questionId, :quizId, :answer, :result, now())');
    $data->bindParam(':questionId', $questId, PDO::PARAM_INT);
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':answer', $answer, PDO::PARAM_STR);
    $data->bindParam(':result', $result, PDO::PARAM_STR);
    $data->execute();
    return $bdd->lastInsertId();
}

function addAnswerNumber ($quizId, $questId, $number) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO answers (question_id, quiz_id, digits, creation_date) VALUES (:questionId, :quizId, :digit, now())');
    $data->bindParam(':questionId', $questId, PDO::PARAM_INT);
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':digit', $number, PDO::PARAM_STR);
    $data->execute();
    return $bdd->lastInsertId();
}

function addAnswerOrder ($quizId, $questId, $answer, $order) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO answers (question_id, quiz_id, answer, ordered, creation_date) VALUES (:questionId, :quizId, :answer, :order, now())');
    $data->bindParam(':questionId', $questId, PDO::PARAM_INT);
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':answer', $answer, PDO::PARAM_STR);
    $data->bindParam(':order', $number, PDO::PARAM_INT);
    $data->execute();
    return $bdd->lastInsertId();
}
