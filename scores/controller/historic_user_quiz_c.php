<?php
if (session_status() === PHP_SESSION_NONE) session_start();
include '../../admin/model/bdd_connect_m.php';
include '../model/historic_user_quiz_m.php';
include '../../quizz_details/model/quiz_details_m.php';

if(isset($_GET['quizId'])) {
    $quizId = $_GET['quizId'];
    $_SESSION['quiz'] = $_GET['quiz'];
    $userId = $_SESSION['userId'];
    $user = $_SESSION['user'];
    $questions = question($quizId);
    $hisUserQuizs = historicUserQuiz($quizId, $userId);
    
    if (!empty($hisUserQuizs)) {
    
    foreach ($hisUserQuizs as $hisUserQuiz) {
        $submission[$hisUserQuiz['question']][$hisUserQuiz['result_id']][] = $hisUserQuiz['answer'].'-'.$hisUserQuiz['user_answer_digit'].'-'.$hisUserQuiz['user_answer_order'];
    }
        
    $resultIds = array_unique(array_column($hisUserQuizs, 'result_id'));
    krsort($resultIds);
    
    include '../view/historic_user_quiz.php';
    } else {
        header('location: historic_users_scores_c.php');
    }
}