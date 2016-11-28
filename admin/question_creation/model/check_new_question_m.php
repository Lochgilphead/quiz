<?php
function checkNewQuestion($question) {
    global $bdd;
    $data = $bdd->prepare('SELECT count(*) FROM questions WHERE question = :question;');
    $data->bindParam(':question', $question, PDO::PARAM_STR);
    $data->execute();
    return $data->fetch();
}

function listQuestion($questionId) {
    global $bdd;
    $data = $bdd->prepare('SELECT question_id, question, multiple_answers, digits, ordered FROM questions WHERE question_id = :questionId;');
    $data->bindParam(':questionId', $questionId, PDO::PARAM_STR);
    $data->execute();
    return $data->fetch();
}