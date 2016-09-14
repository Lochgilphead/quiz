<?php
if (session_status() === PHP_SESSION_NONE) session_start();
include '../../quizzes_list/model/quizzes_list_m.php';//extraction de la liste des quizzes
include '../question_creation/model/new_question_m.php';//insertion des nouvelles questions et réponses
include '../question_creation/model/new_answer_m.php';

if((isset($_POST['newQuestions']) && $_POST['newQuestions'] == 'Questions') OR isset($_SESSION['newQuestions'])) {
    
    if(isset($_POST['question']) && !empty(trim($_POST['question']))) {
        $quizId = $_POST['quizList'];
        $question = htmlspecialchars(trim($_POST['question']));
        unset($_SESSION['errorNoQuestion']);
        $_SESSION['questionOK'] = 'Y'; //on crée une variable qui valide la présence de la question dans le formulaire
        
        $nbAnswer = array();
        
        for($i=1; $i<6 ; $i++) {
            if(isset($_POST["answer"."$i"]) && !empty(trim($_POST["answer"."$i"]))) {
                $answer = htmlspecialchars(trim($_POST["answer"."$i"]));
                if(isset($_POST['result']) && $_POST['result'] == $i) {
                    $result = 'Y';
                } else $result = 'N';
                
                $nbAnswer[] = array('answer'=>$answer, 'result'=>$result); //on met les réponses + indicateur vrai/faux dans un tableau (à utiliser pour l'insertion dans bdd)      
            }
        }
        
        //on contrôle s'il n'y a qu'une seule question
        if (count($nbAnswer) < 2) {
            $_SESSION['errorMinAnswer'] = 'Il faut 2 réponses au minimum!';            
            $_SESSION['question'] = $question;
            if(isset($_SESSION['answer'])) $_SESSION['answer'] = $answer;
        } else {
            unset($_SESSION['question']);
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
        
        
    
    } elseif (isset($_POST['question']) && empty(trim($_POST['question']))) { //contrôle si une question a été saisie lorsqu'on soumet le formulaire
        unset($_SESSION['questionOK']);
        unset($_SESSION['answerOK']);
        $_SESSION['errorNoQuestion'] = 'Veuillez saisir une question!!!';
        unset($_SESSION['errorMinAnswer']);
        unset($_SESSION['errorDuplicateAnswer']);
        unset($_SESSION['errorNoCorrectAnswer']);
}
    
    $_SESSION['newQuestions'] = '1';
    $quizList = quizList();
    include '../question_creation/view/new_question.php';
    
    if(isset($_SESSION['questionOK']) && $_SESSION['questionOK'] === 'Y') {
        if(isset($_SESSION['answerOK']) && $_SESSION['answerOK'] === 'Y') {
            $questionId = newQuestion($quizId, $question);
         if(newAnswer($quizId, $questionId, $nbAnswer)) echo 'Vous avez créer la question : '.$question;            
        }
    }
    
}

