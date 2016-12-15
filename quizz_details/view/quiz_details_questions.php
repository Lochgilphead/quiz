
    <?php if($questions['multiple_answers'] == 'N' && $questions['q_digit'] == 'N' && $questions['q_order'] == 'N') { ?>
<input type="radio" name="resultRadio[<?php echo $questions['question_id'];?>]" value="<?php echo $answers['answer_id'];?>">

    <?php } elseif ($questions['q_digit'] == 'N' && $questions['q_order'] == 'N') {?>
<input type="checkbox" name="resultCheckbox[<?php echo $answers['answer_id'];?>]" value="<?php echo $questions['question_id'];?>">

    <?php } elseif ($questions['q_digit'] == 'Y' && $questions['q_order'] == 'N') {?>
<input type="text" name="resultDigits[<?php echo $answers['answer_id'].'-'.$questions['question_id'];?>]">

    <?php } elseif ($questions['q_digit'] == 'N' && $questions['q_order'] == 'Y') {?>
<input type="number" name="resultOrdered[<?php echo $answers['answer_id'].'-'.$questions['question_id'];?>]" min="1">

    <?php }?>
