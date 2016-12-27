<?php
if (isset($quesResMcq) && isset($quesResOrder) && isset($quesResDigit)) {    
    foreach ($quesResMcq as $quesRes){
        $qId[$quesRes] = $quesRes;
    }
    foreach ($quesResOrder as $quesRes){
        $qId[$quesRes] = $quesRes;
    }
    foreach ($quesResDigit as $quesRes){
        $qId[$quesRes] = $quesRes;
    } 
} elseif (isset($quesResMcq) && isset($quesResOrder) && !isset($quesResDigit)) {
    foreach ($quesResMcq as $quesRes){
        $qId[$quesRes] = $quesRes;
    }
    foreach ($quesResOrder as $quesRes){
        $qId[$quesRes] = $quesRes;
    }   
} elseif (isset($quesResMcq) && !isset($quesResOrder) && isset($quesResDigit)) {
    foreach ($quesResMcq as $quesRes){
        $qId[$quesRes] = $quesRes;
    }
    foreach ($quesResDigit as $quesRes){
        $qId[$quesRes] = $quesRes;
    }     
} elseif (isset($quesResMcq)) {
    foreach ($quesResMcq as $quesRes){
        $qId[$quesRes] = $quesRes;
    }     
}

    
if (isset($quesResMcq) || isset($quesResOrder) || isset($quesResDigit)) {
    $classQuestionId = 'c ';
    foreach ($qId as $questionId) {
        $classQuestionId = $classQuestionId.',.'.$questionId."\r";
    }
    $classQuestionId = $classQuestionId.'{font-family: Verdana; color: white; background-image:linear-gradient(yellow, red);}';
    $fileCss = file_get_contents('../view/quiz_details.css');
    file_put_contents('../view/quiz_details.css', $classQuestionId, FILE_APPEND);
}