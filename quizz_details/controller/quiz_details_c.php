<?php
if (session_status() === PHP_SESSION_NONE) session_start();
unset($_SESSION['submittedQuiz']);
include '../../admin/model/bdd_connect_m.php';
include '../model/quiz_details_m.php';
include '../../scores/model/scores_m.php';

if (isset($_GET['quizId']) and !empty($_GET['quizId'])) {
    $_SESSION['quizId'] = $_GET['quizId'];
    $quizId = $_SESSION['quizId'];
    $user = $_SESSION['user'];
    $userId = $_SESSION['userId'];
    
    $submittedQuiz = submittedQuiz($userId, $quizId); 
    
    if ($submittedQuiz['number'] > 0) {
        $_SESSION['submittedQuiz'] = 'Vous avez déja fait ce quiz!';
        $_SESSION['previousResult'] = $submittedQuiz['results'];
        header('location: ../../quizzes_list/controller/quizzes_list_c.php');
    } else {
    
    if (quiz($_GET['quizId'])) {
    $quiz = quiz($quizId);
    $question = question($quizId);
    $answer = answer($quizId);
    
    $nbQuestions = count($question);
    $nbTotQuestions = count($question);
    
    
    if(isset($_POST['resultRadio']) || isset($_POST['resultCheckbox'])) {
        
        //Définition des différentes valeurs de $results selon l'existence des variables $_POST
        //Valeurs de la variable $results sont les question_id
        if (isset($_POST['resultRadio']) && !isset($_POST['resultCheckbox'])) {
            $flipResultsRadio = $_POST['resultRadio'];
            $flipedResultsRadio = array_flip($flipResultsRadio);
            $results = $flipedResultsRadio;
        } elseif (!isset($_POST['resultRadio']) && isset($_POST['resultCheckbox'])) {
            $resultCheckbox = $_POST['resultCheckbox'];
            $results = $resultCheckbox;        
        } elseif (isset($_POST['resultRadio']) && isset($_POST['resultCheckbox'])) {
            $flipResultsRadio = $_POST['resultRadio'];
            $resultCheckbox = $_POST['resultCheckbox'];
            $flipedResultsRadio = array_flip($flipResultsRadio);
            $results = $flipedResultsRadio + $resultCheckbox;
        }
        
        if (isset($_POST['resultDigits'])){            
            if (!in_array('',($_POST['resultDigits']))) {
                $resultDigits = $_POST['resultDigits'];
                foreach ($resultDigits as $resultDigit => $val) {
                    $resultDi[] = $val.'_'.$resultDigit;            
                }
                foreach($resultDi as $resultD){
                        preg_match('#-(.+)#', $resultD, $resultDigitQuestionID[]);
                        preg_match('#(.+)_#', $resultD, $resultDigitAnswerID[]);
                }            
                for($i = 0; $i < count($resultDigitQuestionID); $i++) {
                    $digitResults[$resultDigitAnswerID[$i][1].'-'.$i] = $resultDigitQuestionID[$i][1];
                }
            }
        }
        if (isset($_POST['resultOrdered'])) {
            $resultOrdered = $_POST['resultOrdered'];
            foreach ($resultOrdered as $resultOrder => $val) {
                $resultOr[] = $val.'_'.$resultOrder;
            }
            foreach($resultOr as $resultO){
                    preg_match('#-(.+)#', $resultO, $resultOrderQuestionID[]);
                    preg_match('#(.+)-#', $resultO, $resultOrderAnswerID[]);
            }            
            for($i = 0; $i < count($resultOrderQuestionID); $i++) {
                $orderResults[$resultOrderAnswerID[$i][1]] = $resultOrderQuestionID[$i][1];
            }
        }
                
        if (isset($digitResults)) {
            if (isset($orderResults)) {
            $results = $results + $digitResults + $orderResults;
            } else {
            $results = $results + $digitResults;    
            }
        } elseif (isset ($orderResults)) {
        $results = $results + $orderResults;
    }
    
        //Définition du nombre de questions répondues
        $uniqueQuestionID = array_unique($results);
    //var_dump($uniqueQuestionID);
        /* contrôle nb questions répondues / nb de bonnes réponses
         echo 'nb of questions answered: '.count($uniqueQuestionID);
         echo 'Good Results From Answered Questions :<br>';
         echo '<b>'.$nbCorrectQuestions.'</b>';
        */
        
         $nbCorrectQuestions = 0;
         
         foreach ($uniqueQuestionID as $questionID) {       //On prend chaque question à laquelle on a répondu
             
             include 'quiz_details_mcq_c.php';      //Explications dans quiz_details_mcq_c.php
             include 'quiz_details_digit_c.php';
             include 'quiz_details_order_c.php';
             
         }
         
        if (count($uniqueQuestionID) == count($question)) { //Vérification que toutes les questions ont été répondues           
            include '../view/quiz_details.php';

$finalScore = $nbCorrectQuestions+(count($resultQuizDigit))+count($resultQuizOrder);


            if (isset($nbCorrectQuestions)) {
                $score = ceil(($finalScore/count($question))*100).' % de bonnes réponses!';
                $scoreId = insertScoreQuiz($userId, $quizId, $score);
                include '../../scores/view/quiz_score.php';
                
            }
            
            
        } else {
            include '../view/error_answer.php';
        }
    } else {        
        $_SESSION['goodAnswer'] = 0;
        include '../view/quiz_details.php';
    }
    } else {
        header('location: ../../quizzes_list/controller/quizzes_list_c.php');
    }
    }
    
    } 



