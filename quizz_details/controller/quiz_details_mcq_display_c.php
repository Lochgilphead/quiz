<?php
$nbr = array();
$bonsResultatsMultipleChoice = resultMultipleChoice($quizId, $questions['question_id']);
foreach ($bonsResultatsMultipleChoice as $bonsResultat) {
    if ($bonsResultat[0] == $answers['answer_id']) {
        $nbr = $answers['answer_id'];                           
        echo '<span class="good">Bonne réponse!</span>';
    }                      
}


foreach ($results as $answerID => $questionID) {
    if ($questionID == $questions['question_id']) {
        if ($answerID == $answers['answer_id']) {
            if (isset($nbr[0]) != $answerID) {
                echo '<span class="bad">Mauvaise réponse!</span>';
                $quesResMcq[$questions['question_id']] = 'q'.$questions['question_id'];
            }
        }
    }
}            

