<?php
function quizList(){
    global $bdd;
    $data = $bdd->prepare('SELECT b.quiz,b.quiz_id AS "quizId",count(a.question_id) AS "nbQuestions"
                            FROM questions a
                            RIGHT JOIN quizzes b ON a.quiz_id = b.quiz_id
                            GROUP BY b.quiz,b.quiz_id
                            ORDER BY b.quiz_id;');
    $data->execute();
    return $data->fetchAll();
}
