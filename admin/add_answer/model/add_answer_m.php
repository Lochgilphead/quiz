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

