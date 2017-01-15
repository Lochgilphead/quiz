<?php
function historicAnswersMcq($answerId,$questionId,$userId,$scoreId){
    global $bdd;
    $data = $bdd->prepare('INSERT INTO historic_answers (user_id, question_id, result_id,
                           user_answer_id, creation_date) 
                           VALUES (:userId, :questionId, :resultId, :answerId, now());');
    $data->bindParam(':userId', $userId, PDO::PARAM_INT);
    $data->bindParam(':answerId', $answerId, PDO::PARAM_INT);
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->bindParam(':resultId', $scoreId, PDO::PARAM_INT);
    $data->execute();
}

function historicAnswersOrder($myOrder,$answerId,$questionId,$userId,$scoreId) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO historic_answers (user_id, question_id, result_id,
                           user_answer_id, user_answer_order, creation_date) 
                           VALUES (:userId, :questionId, :resultId, :answerId, :myOrder, now());');
    $data->bindParam(':myOrder', $myOrder, PDO::PARAM_INT);
    $data->bindParam(':userId', $userId, PDO::PARAM_INT);
    $data->bindParam(':answerId', $answerId, PDO::PARAM_INT);
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->bindParam(':resultId', $scoreId, PDO::PARAM_INT);
    $data->execute();
}

function historicAnswersDigit($myDigit,$questionId,$userId,$scoreId) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO historic_answers (user_id, question_id, result_id,
                           user_answer_digit, creation_date) 
                           VALUES (:userId, :questionId, :resultId, :myDigit, now());');
    $data->bindParam(':myDigit', $myDigit, PDO::PARAM_INT);
    $data->bindParam(':userId', $userId, PDO::PARAM_INT);
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->bindParam(':resultId', $scoreId, PDO::PARAM_INT);
    $data->execute();
}