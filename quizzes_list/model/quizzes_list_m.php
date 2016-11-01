<?php
function quizList(){
    global $bdd;
    $data = $bdd->prepare('SELECT a.quiz,a.quiz_id AS "quizId",count(b.question_id) AS "nbQuestions"
                            FROM quizzes a
                            RIGHT JOIN questions b ON a.quiz_id = b.quiz_id
                            WHERE b.question_id IN (SELECT question_id FROM answers)
                            GROUP BY a.quiz,a.quiz_id
                            ORDER BY a.quiz_id;');
    $data->execute();
    return $data->fetchAll();
}
