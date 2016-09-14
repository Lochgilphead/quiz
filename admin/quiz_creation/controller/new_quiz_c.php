<?php
if (session_status() === PHP_SESSION_NONE) session_start();

if((isset($_POST['newQuiz']) && $_POST['newQuiz'] == 'Quiz') OR isset($_SESSION['newQuiz'])) {
    
    $_SESSION['newQuiz'] = '1';
    
    if(isset($_POST['quizTitle']) && !empty(trim($_POST['quizTitle']))) {
        $quizTitle = htmlspecialchars($_POST['quizTitle']);
        include '../quiz_creation/model/new_quiz_m.php';
        
        if(!empty($last_insert)) {
            unset($_SESSION['newQuiz']);
            echo 'Bravo! Le Quiz numéro '.$last_insert.' intitulé "<b>'.$quizTitle.'</b>" a été créé';
        }
        
    }
    
    if(isset($_SESSION['newQuiz'])) include '../quiz_creation/view/new_quiz.php';
    
}