<?php
$bonResultatsOrder = resultOrder($quizId, $questions['question_id']);

foreach ($bonResultatsOrder as $bonsResultat) {    
    $bonOrder = array();
            if ($bonsResultat['answer_id'] == $answers['answer_id']) {
                $bonOrder = $bonsResultat['order'];
                foreach ($results as $orderAnswerId => $questionId) {
                    if ($questions['question_id'] == $questionId) {
                        $myAnswerId = substr($orderAnswerId, (strpos($orderAnswerId, "_")+1));
                        $myOrder = substr($orderAnswerId, 0, strpos($orderAnswerId, "_"));
                        if ($bonsResultat['answer_id'] == $myAnswerId) {
                            if ($bonOrder[0] != $myOrder) {
                                echo '<span class="bad">Mauvaise réponse!</span>'.' Bonne réponse: '.'<span class="good"><b>'.$bonOrder[0].'</b></span>';
                            } else {
                                echo '<span class="good">Bonne réponse! <b>'.$bonOrder[0].'</b></span>';
                            }
                        }
                    }
                }
            }
        }





