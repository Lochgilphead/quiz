<?php
if (session_status() === PHP_SESSION_NONE) session_start();

include '../../questions_list/model/questions_list_m.php';//extraction de la liste des questions selon le quiz choisi
include '../../answers_list/model/answers_list_m.php';//extraction de la liste des questions
include '../add_answer/model/add_answer_m.php';//insertion d'une nouvelle réponse

if((isset($_POST['newAnswers']) && $_POST['newAnswers'] == 'Réponses') OR isset($_SESSION['newAnswers'])) {
    
    $_SESSION['newAnswers'] = '1';
    $quizList = quizList();
    
    include '../add_answer/view/add_answer_quiz.php';
    
    if ((isset($_POST['quizList']) && $_POST['quizList'] != 'titre')) {
        $quiz = htmlspecialchars($_POST['quizList']);
        preg_match('/-(.+)/', $quiz, $quizN);
        preg_match('#.+-#', $quiz, $quizI);
        $_SESSION['quizName'] = substr($quizN[0],1);
        $_SESSION['quizId'] = substr($quizI[0],0,1);
        $quizId = $_SESSION['quizId'];
        $questionList = questionList($quizId);
        
        include '../add_answer/view/add_answer_question.php';
    }
        
    if (isset($_POST['questionList']) && $_POST['questionList'] != 'titre' || isset($_POST['addAnswer'])) {
        if (!empty($_POST['questionList'])) $_SESSION['question'] = $_POST['questionList'];
        $question = htmlspecialchars(!empty($_POST['questionList'])? $_POST['questionList'] :$_SESSION['question']);
        preg_match('/-(.+)/', $question, $questionN);
        preg_match('#.+-#', $question, $questionI);
        $_SESSION['questName'] = substr($questionN[0],1);
        $_SESSION['questId'] = substr($questionI[0],0,-1);
        $questId = $_SESSION['questId'];
        $answerList = answerList($questId);
            
        include '../add_answer/view/add_answer.php';
        
    }
    
    if (isset($_POST['questionToAdd']) || isset($_POST['number']) || isset($_POST['order'])) {
        $quizId = $_SESSION['quizId'];
        $questId = $_SESSION['questId'];
        
    if (isset($_POST['questionToAdd']) && !empty($_POST['questionToAdd'])) {
        $answer = htmlspecialchars($_POST['questionToAdd']);
        $result = !empty($_POST['result']) == 'on'? 'Y': 'N';
        if($addAnswer = addAnswer($quizId, $questId, $answer, $result)) {
            echo 'La réponse: "'.$answer.'" a été ajoutée';
        } else {
        echo 'La réponse: "'.$answer.'" n\'a pas été ajoutée';        
        }  
    } elseif (isset ($_POST['number'])) {
        $number = !empty($_POST['number']);
        if(addAnswerNumber($quizId, $questId, $number)) {
            echo 'La réponse: "'.$number.'" a été ajoutée';
        } else {
        echo 'La réponse: "'.$number.'" n\'a pas été ajoutée'; 
        }
    } elseif (isset ($_POST['order'])) {
        $answer = htmlspecialchars($_POST['answer']);
        $order = !empty($_POST['order']);
        if(addAnswerOrder($quizId, $questId, $answer, $order)) {
            echo 'La réponse: "'.$answer.'" a été ajoutée';
        } else {
        echo 'La réponse: "'.$answer.'" n\'a pas été ajoutée';
        }
    }    
   }
}
