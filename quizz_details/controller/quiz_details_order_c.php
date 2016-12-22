<?php
foreach ($question as $ques){
    if ($ques['q_order'] == 'Y' && ($ques['question_id'] == $questionID)){
        $goodResultsOrder = resultOrder($quizId, $questionID);

        foreach ($goodResultsOrder as $answerIdOrder ){

                foreach ($results as $orderAnswerId => $questionId) {
                    if($ques['question_id'] == $questionId){
                        $myAnswerId = substr($orderAnswerId, (strpos($orderAnswerId, "_")+1));
                        $myOrder = substr($orderAnswerId, 0, strpos($orderAnswerId, "_"));
                        if ($myAnswerId == $answerIdOrder['answer_id']){

                            if ($myOrder == $answerIdOrder['order']){
                                $nbAnswerId[$myAnswerId] = $questionId;
                                
                                foreach($nbAnswerId as $nbQues){
                                    if ($nbQues == $questionId){
                                        $nbQuestionId[$questionId][$myAnswerId] = $myAnswerId;
                                    }
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
       if (count($goodQues) == QuestionOrderAnswer($questionId)['nb']){
           $resultQuizOrder[] = 1;  
       }
}

$resultQuizOrder = isset($resultQuizOrder)? $resultQuizOrder: array();
