<?php
function questionList($quizId) {
    global $bdd;
    $data = $bdd->prepare('SELECT question_id, question, digits FROM questions WHERE quiz_id = :quizId');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll();
}

function selectQuestion($questId) {
    global $bdd;
    $data = $bdd->prepare(
            'SELECT q.question_id, q.digits, q.ordered, count(a.answer_id) "nbAnswer"
            FROM questions q LEFT JOIN answers a ON q.question_id = a.question_id
            WHERE q.question_id = :questionId');
    $data->bindParam(':questionId', $questId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetch();
}