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
    $data = $bdd->prepare('SELECT DISTINCT question_id, question FROM v_quiz_details
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

function result($quizId, $questionId) {
    global $bdd;
    $data = $bdd->prepare('SELECT answer_id FROM v_quiz_details
                            WHERE quiz_id = :quizId AND question_id = :questionId AND result = "Y"');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $data->execute();
    return $data->fetch();
}
//$data->closeCursor();
    /*
    $data = $bdd->prepare('SELECT question_id, question FROM v_quiz_details
                            WHERE quiz_id = :quizId;');
    $data->bindParam(':quizId', $quizId, PDO::PARAM_INT);
    $data->execute();
    $questions = $data->fetchAll();
    //$data->closeCursor();
    */
    


