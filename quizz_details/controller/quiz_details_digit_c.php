<?php

foreach ($question as $ques){
    if ($ques['q_digit'] == 'Y' && ($ques['question_id'] == $questionID)){
            $goodResultsDigit = resultDigit($quizId, $questionID);
            foreach ($goodResultsDigit as $gr) {
               //echo '<b>'.$gr.'</b>';
                //$nbAnswers = array();
                foreach ($results as $result => $questionId) {
                    if($ques['question_id'] == $questionId){
                        $resultDi = substr($result, 0, strpos($result, "-"));
                        //$nbAnswers[] = $resultDi;
                        //var_dump($resultDi);
                        if($resultDi == $gr ) {
                            $nb[] = 1;
                        }
                    }   
                }
            }
    }
}

$resultQuizDigit = isset($nb)?$nb:array();

