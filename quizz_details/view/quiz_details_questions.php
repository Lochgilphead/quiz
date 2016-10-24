<?php if($questions['multiple_answers'] == 'N') { ?>
<input type="radio" name="resultRadio[<?php echo $questions['question_id'];?>]" value="<?php echo $answers['answer_id'];?>">
<?php } else {?>
<input type="checkbox" name="resultCheckbox[<?php echo $answers['answer_id'];?>]" value="<?php echo $questions['question_id'];?>">
<?php };?>