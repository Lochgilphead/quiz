<?php
function questionList($quizId) {
    global $bdd;
    $data = $bdd->prepare('SELECT question_id, question FROM questions WHERE quiz_id = :quizId');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll();
}

