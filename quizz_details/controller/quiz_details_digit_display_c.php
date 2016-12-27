<?php
$bonResultatsDigit = resultDigit($quizId, $questions['question_id']);

foreach ($results as $orderAnswerId => $questionId) {
    if ($questions['question_id'] == $questionId) {
        $bonDigit = $bonResultatsDigit['digit'];
        $resultDi = substr($orderAnswerId, 0, strpos($orderAnswerId, "-"));
        if ($resultDi == $bonDigit) {
            echo '<span class="good">Bonne réponse! <b>'.$bonDigit.'</b></span>';
        } else {
            echo '<span class="bad">Mauvaise réponse!</span>'.' Bonne réponse: '.'<span class="good"><b>'.$bonDigit.'</b></span>';
            $quesResDigit[$questions['question_id']] = 'q'.$questions['question_id'];
        }
    }
}


