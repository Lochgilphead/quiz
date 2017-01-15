<?php
function historicUserQuiz($quizId,$userId){
    global $bdd;
    $data = $bdd->prepare('SELECT DISTINCT s.quiz, d.question, d.question_id, a.answer, h.user_answer_digit, h.user_answer_order, h.creation_date, s.result_id
                            FROM v_scores_quizs s
                            INNER JOIN historic_answers h ON s.result_id = h.result_id
                            INNER JOIN v_quiz_details d ON s.quiz_id = d.quiz_id
                            LEFT JOIN answers a ON a.answer_id = h.user_answer_id
                            WHERE h.user_id = :userId
                            AND s.quiz_id = :quizId
                            AND h.question_id = d.question_id');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':userId', $userId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll(PDO::FETCH_ASSOC);
}

function resultDate($resultId) {
    global $bdd;
    $data = $bdd->prepare('SELECT DATE_FORMAT(creation_date,"%d/%m/%y") AS date, results
                          FROM results
                          WHERE result_id = :resultId;');
    $data->bindParam(':resultId', $resultId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetch(PDO::FETCH_ASSOC);
}

