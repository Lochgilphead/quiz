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
        if (isset($_POST['resultDigits'])) {
            $resultDigits = $_POST['resultDigits'];
            //var_dump($resultDigits);
            foreach ($resultDigits as $resultDigit => $val) {
                $resultDi[] = $resultDigit;
            }
            foreach($resultDi as $resultD){
                    preg_match('#-(.+)#', $resultD, $resultDigitQuestionID[]);
                    preg_match('#-(.+)#', $resultD, $resultDigitAnswerID[]);
            }            
            for($i = 0; $i < count($resultDigitQuestionID); $i++) {
                $digitResults[$resultDigitAnswerID[$i][1]] = $resultDigitQuestionID[$i][1];
            }
        }
        if (isset($_POST['resultOrdered'])) {
            $resultOrdered = $_POST['resultOrdered'];
            foreach ($resultOrdered as $resultOrder => $val) {
                $resultOr[] = $resultOrder;
            }
            foreach($resultOr as $resultO){
                    preg_match('#-(.+)#', $resultO, $resultOrderQuestionID[]);
                    preg_match('#(.+)-#', $resultO, $resultOrderAnswerID[]);
            }            
            for($i = 0; $i < count($resultOrderQuestionID); $i++) {
                $orderResults[$resultOrderAnswerID[$i][1]] = $resultOrderQuestionID[$i][1];
            }
        }
                
        $results = $results + $digitResults + $orderResults;
        
        //Définition du nombre de questions répondues
        $uniqueQuestionID = array_unique($results);
        
        /* contrôle nb questions répondues / nb de bonnes réponses
         echo 'nb of questions answered: '.count($uniqueQuestionID);
         echo 'Good Results From Answered Questions :<br>';
         echo '<b>'.$nbCorrectQuestions.'</b>';
        */
         
         $nbCorrectQuestions = 0;
         foreach ($uniqueQuestionID as $questionID) {       //On prend chaque question à laquelle on a répondu
             $nbGoodAnswers = 0;                            
             $goodResults = result($quizId, $questionID);   //On trouve les bonnes réponses (answer_id)
             foreach ($goodResults as $gr){                 //Pour chaque bonne réponse (1 ou plusieurs)
                
             $nbAnswers = array();
             
             foreach ($results as $result => $questionid) { //Pour chacune de nos réponses
                    if($questionID == $questionid){         //(lorsque la question 'bonne réponse' est la même que la question répondue) 
                        $nbAnswers[] = $result;             //On stocke nos réponses dans une variable
                        
                        if($result == $gr['answer_id']){    //Si nos réponses correspondent à la (ou aux) bonne(s) réponse(s) de la question
                            $nbGoodAnswers++;               //On incrémente un compteur
                        } 
                    }
                }
            }
             $nbGoodResults = count($goodResults);          //On compte le nb de bonnes réponses 'absolues' existantes à chaque question
 
            if (isset($nbAnswers)) {                        //On détermine si on a répondu à une bonne question (si le nb de bonnes réponses répondues = nb de bonnes réponses 'absolues') 
                 
                 if (count($nbAnswers) == $nbGoodAnswers) { ////Si nb de nos bonnes réponse = nb de réponses auxquelles on a répondu (lorsqu'on coche une mauvaise réponse, toute la réponse est fausse) 
                     if ($nbGoodResults == $nbGoodAnswers) {    ////Si notre nb de bonnes réponses = nb de bonnes réponses 'absolues'
                        $nbCorrectQuestions++;                      ///On incrémente un compteur, c.a.d une bonne réponse
                     }
                 }
            }
         }
         
        if (count($uniqueQuestionID) == count($question)) { //Vérification que toutes les questions ont été répondues           
            include '../view/quiz_details.php';
            

            if (isset($nbCorrectQuestions)) {
                $score = ceil(($nbCorrectQuestions/count($question))*100).' % de bonnes réponses!';
                
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



