<?php
if (session_status() === PHP_SESSION_NONE) session_start();
include '../../admin/model/bdd_connect_m.php';
include '../model/quiz_details_m.php';

if (isset($_GET['quizId']) and !empty($_GET['quizId'])) {
    if (quiz($_GET['quizId'])) {
    $_SESSION['quizId'] = $_GET['quizId'];
    $quizId = $_SESSION['quizId'];
    $quiz = quiz($quizId);
    $question = question($quizId);
    $answer = answer($quizId);
    
    if(isset($_POST['result'])) {   
        
        $results = $_POST['result'];
        if (count($results) == count($question)) {            
            include '../view/quiz_details.php';

            if ($_SESSION['checkScore'] == 1) {
                $score = ceil(($_SESSION['goodAnswer']/count($question))*100).' % de bonnes réponses!';
                $_SESSION['checkScore'] = $_SESSION['checkScore'] + 1;
                include '../view/quiz_score.php';
                
            }
            
            
        } else {
            include '../view/error_answer.php';
        }
    } else {        
        $_SESSION['goodAnswer'] = 0;
        $_SESSION['checkScore'] = 1;
        include '../view/quiz_details.php';
    }
    } else {
        header('location: ../../quizzes_list/controller/quizzes_list_c.php');
    }
    
    } 



