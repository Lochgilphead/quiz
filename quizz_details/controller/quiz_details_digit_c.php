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

foreach ($question as $ques){
    if ($ques['q_order'] == 'Y' && ($ques['question_id'] == $questionID)){
        $goodResultsOrder = resultOrder($quizId, $questionID);
        
       // var_dump($goodResultsOrder);
        foreach ($goodResultsOrder as $answerIdOrder ){
            //$nbAnswers = array();
            
                var_dump($answerIdOrder);
                //echo $answerIdOrder[0];
                foreach ($results as $orderAnswerId => $questionId) {
                    if($ques['question_id'] == $questionId){
                        $myAnswerId = substr($orderAnswerId, (strpos($orderAnswerId, "_")+1));
                        $myOrder = substr($orderAnswerId, 0, strpos($orderAnswerId, "_"));
                        if ($myAnswerId == $answerIdOrder['answer_id']){
                            //echo $myOrder.'<br>';
                            //echo $answerIdOrder['order'].'<br>';
                            if ($myOrder == $answerIdOrder['order']){
                                $nbAnswerId[$myAnswerId] = $questionId;
                                //var_dump($nbAnswerId);
                                foreach($nbAnswerId as $nbQues){
                                    if ($nbQues == $questionId){
                                        
                                        $nbQuestionId[$questionId][$myAnswerId] = $myAnswerId;
                                       
                                    
                                    //echo '<b>'.$i.'</b>';
                                        //$nbQuestionId[$questionId.$myAnswerId] = $myAnswerId;
                                        
                                    }
                                     /*if (count($nbQuestionId[$questionId]) == 3){
                                            $b[] = 1;
                                        }*/
                                }
                            }
                        }
                    }
                    
                }
            
        }
        
    }
}

$nbGoodQuesId = isset($nbQuestionId)? $nbQuestionId: array();
$resultQuizOrder = array();
foreach ($nbGoodQuesId as $questionId=>$goodQues) {
    echo count($goodQues);
   /*foreach($goodQues as $c) {
       echo $d.'<br>';
   }*/
    //$b[] = $goodQues;
       //$d = QuestionOrderAnswer($c);
       if (count($goodQues) == QuestionOrderAnswer($questionId)['nb']){
           //echo 'OK';
           $resultQuizOrder[] = 1;  
           
       }
       //var_dump($goodQues);
}

$resultQuizOrder = isset($resultQuizOrder)? $resultQuizOrder: array();
