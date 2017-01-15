<?php
function displayHistoric($userId){
    global $bdd;
    $data = $bdd->prepare('SELECT DISTINCT user, quiz, quiz_id, MAX(results) AS "resultats", COUNT(quiz) AS "tentatives", DATE_FORMAT(creation_date, "%d\/%m\/%y") AS "date"
                            FROM v_scores_quizs WHERE user_id = :userId
                            GROUP BY quiz HAVING MAX(creation_date);');
    $data->bindParam(':userId', $userId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll(PDO::FETCH_ASSOC);
}

