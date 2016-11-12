<?php
if (session_status() === PHP_SESSION_NONE) session_start();
unset($_SESSION['submittedQuiz']);

include '../../admin/model/bdd_connect_m.php';
include '../../scores/model/scores_m.php';

$scoreQuiz = scoreQuiz();
$quiz = array_unique(array_column($scoreQuiz, 'quiz'));

include '../view/historic_scores.php';



