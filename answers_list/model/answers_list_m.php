<?php
function answerList($questId) {
    global $bdd;
    $data = $bdd->prepare('SELECT answer, result FROM answers WHERE question_id = :questionId');
    $data->bindParam(':questionId', $questId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll();
}
