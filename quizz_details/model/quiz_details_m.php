<?php
function quiz($quizId) {
    global $bdd;
    $data = $bdd->prepare('SELECT quiz_id, quiz FROM v_quiz_details
                            WHERE quiz_id = :quizId;');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetch();
}

function question($quizId) {
    global $bdd;
    $data = $bdd->prepare('SELECT DISTINCT question_id, question, multiple_answers, q_digit, q_order FROM v_quiz_details
                            WHERE quiz_id = :quizId;');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll();
}

function answer($quizId) {
    global $bdd;
    $data = $bdd->prepare('SELECT DISTINCT question_id, answer_id, answer FROM v_quiz_details
                            WHERE quiz_id = :quizId;');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll();
}

function resultMultipleChoice($quizId, $questionId) {
    global $bdd;
    $data = $bdd->prepare('SELECT answer_id FROM v_quiz_details
                            WHERE quiz_id = :quizId AND question_id = :questionId AND result = "Y"');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll();
}

function resultDigit($quizId, $questionId) {
    global $bdd;
    $data = $bdd->prepare('SELECT digit FROM v_quiz_details
                            WHERE quiz_id = :quizId AND question_id = :questionId;');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetch(PDO::FETCH_ASSOC);
}

function resultOrder($quizId, $questionId) {
    global $bdd;
    $data = $bdd->prepare('SELECT v.answer_id, v.order FROM v_quiz_details v
                            WHERE v.quiz_id = :quizId AND v.question_id = :questionId;');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetchAll(PDO::FETCH_ASSOC);
}

function QuestionOrderAnswer($questionId) {
    global $bdd;
    $data = $bdd->prepare('SELECT count(answer_id) AS "nb" FROM v_quiz_details
                            WHERE question_id = :questionId');
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetch(PDO::FETCH_ASSOC);
}