<?php
if (session_status() === PHP_SESSION_NONE) session_start();
unset($_SESSION['newQuiz']);
unset($_SESSION['answerOK']);
unset($_SESSION['newQuestions']);
unset($_SESSION['newAnswers']);
unset($_SESSION['errorNoQuestion']);
unset($_SESSION['errorMinAnswer']);
unset($_SESSION['errorDuplicateAnswer']);
unset($_SESSION['question']);
unset($_SESSION['answer']);
unset($_SESSION['errorNoCorrectAnswer']);
unset($_SESSION['questionOK']);
unset($_SESSION['answerOK']);
unset($_SESSION['duplicateQuestion']);

include '../../admin/model/bdd_connect_m.php';
include_once '../model/quizzes_list_m.php';
$listQuiz = quizList();


if (isset($_POST['userId']) && isset($_POST['user'])) {
    $_SESSION['userId'] = $_POST['userId'];
    $_SESSION['user'] = $_POST['user'];
}

include '../view/quizzes_list.php';


