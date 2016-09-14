<?php
if(isset($_POST['newQuiz'])) {
     unset($_SESSION['newQuestions']);
     unset($_SESSION['newAnswers']);
} elseif (isset($_POST['newQuestions'])) {
     unset($_SESSION['newAnswers']);
     unset($_SESSION['newQuiz']);    
} elseif (isset($_POST['newAnswers'])) {
     unset($_SESSION['newQuestions']);
     unset($_SESSION['newQuiz']);    
}
  

