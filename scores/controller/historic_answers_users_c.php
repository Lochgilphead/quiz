<?php
if (isset($mcqResults)){
    foreach ($mcqResults as $answerId => $questionId) {
        historicAnswersMcq($answerId,$questionId,$userId,$scoreId);           
    }
}

if (isset($orderResults)){
    foreach ($orderResults as $myOrderAnswerId => $questionId) {
        $myOrder = substr($myOrderAnswerId, 0, strpos($myOrderAnswerId, "_")); 
        $answerId = substr($myOrderAnswerId, strpos($myOrderAnswerId, "_")+1);
        historicAnswersOrder($myOrder,$answerId,$questionId,$userId,$scoreId);
    }
}

if (isset($digitResults)) {
    foreach ($digitResults as $myDigitDummy => $questionId) {
        $myDigit = substr($myDigitDummy, 0, strpos($myDigitDummy, "-"));
        historicAnswersDigit($myDigit,$questionId,$userId,$scoreId);
    }
}
