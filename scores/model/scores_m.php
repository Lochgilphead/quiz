<?php
function insertScoreQuiz($userId, $quizId, $score) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO results (user_id, quiz_id, submitted, creation_date, results)
            VALUES (:userId, :quizId, "Y", now(), :score);');
    $data->bindParam(':userId', $userId, PDO::PARAM_INT);
    $data->bindParam('quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':score', $score, PDO::PARAM_INT);
    $data->execute();
    return $bdd->lastInsertId();
}

function submittedQuiz($userId, $quizId) {
    global $bdd;
    $data = $bdd->prepare('SELECT count(*) FROM results WHERE user_id = :userId AND quiz_id = :quizId;');
    $data->bindParam(':userId', $userId, PDO::PARAM_INT);
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetch();
}



