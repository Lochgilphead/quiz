<?php
function newAnswer($quizId, $questionId, $nbAnswer){
    global $bdd;
    foreach ($nbAnswer as $answer) {
        $data = $bdd->prepare('INSERT INTO answers (question_id, quiz_id, answer, result, creation_date) VALUES (:questionId, :quizId, :answer, :result, now())');
        $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
        $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
        $data->bindParam(':answer', $answer['answer'], PDO::PARAM_STR);
        $data->bindParam(':result', $answer['result'], PDO::PARAM_STR);
        $data->execute();
    }
    return $bdd->lastInsertId();
}

