<?php if($questions['multiple_answers'] == 'N' && $questions['digits'] == 'N' && $questions['ordered'] == 'N') { ?>
<input type="radio" name="resultRadio[<?php echo $questions['question_id'];?>]" value="<?php echo $answers['answer_id'];?>">
<?php } elseif ($questions['digits'] == 'N' && $questions['ordered'] == 'N') {?>
<input type="checkbox" name="resultCheckbox[<?php echo $answers['answer_id'];?>]" value="<?php echo $questions['question_id'];?>">
<?php } elseif ($questions['digits'] == 'Y' && $questions['ordered'] == 'N') {?>
<input type="text" name="resultDigits[<?php echo $questions['question_id'];?>]">
<?php } elseif ($questions['digits'] == 'N' && $questions['ordered'] == 'Y') {?>
<input type="text" name="resultOrdered[<?php echo $answers['answer_id'].'-'.$questions['question_id'];?>]">
<?php }?>
