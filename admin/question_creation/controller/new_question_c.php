<?php
if (session_status() === PHP_SESSION_NONE) session_start();
include '../../quizzes_list/model/quizzes_list_m.php';//extraction de la liste des quizzes
include '../question_creation/model/new_question_m.php';//insertion des nouvelles questions et réponses
include '../question_creation/model/check_new_question_m.php';
include '../question_creation/model/new_answer_m.php';


if((isset($_POST['newQuestions']) && $_POST['newQuestions'] == 'Questions') OR isset($_SESSION['newQuestions'])) {
    
    if(isset($_POST['question']) && !empty(trim($_POST['question']))) {
        $_SESSION['quizId'] = $_POST['quizList'];
        $quizId = $_SESSION['quizId'];
        $question = htmlspecialchars(trim($_POST['question']));
        $_SESSION['question'] = $question;
        $reponse = $_POST['reponse'];
        unset($_SESSION['errorNoQuestion']);
        $_SESSION['questionOK'] = 'Y'; //on crée une variable qui valide la présence de la question dans le formulaire
        $newQuestion = checkNewQuestion($question); 
        if ($newQuestion[0] <> 0) {
            $_SESSION['duplicateQuestion'] = 'La question a déja été saisie!!!';
        } else {
            unset($_SESSION['duplicateQuestion']);
            $_SESSION['$questionId'] = newQuestion($quizId, $question, $reponse);
            $questionId = $_SESSION['$questionId'];
        }
        
    } elseif (isset($_POST['question']) && empty(trim($_POST['question']))) { //contrôle si une question a été saisie lorsqu'on soumet le formulaire
        $_SESSION['errorNoQuestion'] = 'Veuillez saisir une question!!!';
    }
    $quizList = quizList();
    $_SESSION['newQuestions'] = '1';
    include '../question_creation/view/new_question.php';
}

if(!empty($questionId)) {
    $questionCreated = listQuestion($questionId);
    if($questionCreated['multiple_answers'] == 'N') {
        include '../question_creation/view/new_answer.php';
    } else {
        include '../question_creation/view/new_answer_multiple.php';
    }
}

if(isset($_POST['single'])) {
        $nbAnswer = array();        
        for($i=1; $i<6 ; $i++) {
            if(isset($_POST["answer"."$i"]) && !empty(trim($_POST["answer"."$i"]))) {
                $answer = htmlspecialchars(trim($_POST["answer"."$i"]));
                if(isset($_POST['result']) && $_POST['result'] == $i){
                    $result = 'Y';
                } else $result = 'N';                
                $nbAnswer[] = array('answer'=>$answer, 'result'=>$result); //on met les réponses + indicateur vrai/faux dans un tableau (à utiliser pour l'insertion dans bdd)      
            }          
        }
} elseif (isset($_POST['multiple'])) {
        $nbAnswer = array();        
        for($i=1; $i<6 ; $i++) {
            if(isset($_POST["answer"."$i"]) && !empty(trim($_POST["answer"."$i"]))) {
                $answer = htmlspecialchars(trim($_POST["answer"."$i"]));
                if(isset($_POST["result"."$i"])){
                    $result = 'Y';
                } else $result = 'N';
                
                $nbAnswer[] = array('answer'=>$answer, 'result'=>$result); //on met les réponses + indicateur vrai/faux dans un tableau (à utiliser pour l'insertion dans bdd) 
                var_dump($nbAnswer);
            }           
        }
}        
 
if (isset($nbAnswer)) {
        //on contrôle s'il n'y a qu'une seule réponse
if (count($nbAnswer) < 2) {
    $_SESSION['errorMinAnswer'] = 'Il faut 2 réponses au minimum!';            
            if(isset($_SESSION['answer'])) $_SESSION['answer'] = $answer;
        } else {
            //unset($_SESSION['question']);
            unset($_SESSION['answer']);
            unset($_SESSION['errorMinAnswer']);
            unset($_SESSION['errorDuplicateAnswer']);
                
            //on contrôle s'il y a plusieurs réponses identiques pour la même question
            $checkDuplicate = array();
        
            foreach ($nbAnswer as $value) {
                $duplicate = in_array($value['answer'], $checkDuplicate);
                $checkDuplicate[] = $value['answer'];
                if($duplicate) {
                $_SESSION['errorDuplicateAnswer'] = 'Vous avez saisi la même réponse à la même question plusieurs fois!';
                } else unset($_SESSION['errorDuplicateAnswer']);
            }

            //on contôle s'il y a un 'Y' dans les réponses
            $checkResult = array();        
            foreach ($nbAnswer as $value) {
                $checkResult[] = $value['result'];
            }
            $resultY = in_array('Y', $checkResult);
            if(!$resultY) {
               unset($_SESSION['answerOK']);
               $_SESSION['errorNoCorrectAnswer'] = 'Il faut cocher la case à côté de la bonne réponse!';               
            } else {
                unset($_SESSION['errorNoCorrectAnswer']);
                $_SESSION['answerOK'] = 'Y';//on crée une variable qui valide les réponse du formulaire
            }
        }
        
    $_SESSION['newQuestions'] = '1';
    
    if(isset($_SESSION['questionOK']) && $_SESSION['questionOK'] === 'Y') {
        if(isset($_SESSION['answerOK']) && $_SESSION['answerOK'] === 'Y') {
            $quizId = $_SESSION['quizId'];
            $questionId = $_SESSION['$questionId'];
         if(newAnswer($quizId, $questionId, $nbAnswer)) echo 'Vous avez créé la question : '.$_SESSION['question'];            
        }
    }
}
        
