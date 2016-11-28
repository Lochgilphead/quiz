
<div>La question "<?php echo $_SESSION['questName'];?>" contient les réponses suivantes : </div>
<table>
    <?php
    foreach ($answerList as $answer) {    
    ?>
    <tr><td><?php echo $answer['answer']?></td><td><?php echo $answer['result']?></td></tr>
    <?php }?>
</table>
<form method="post">
    <label>Ajouter une réponse <input type="submit" value="OK" name="addAnswer"></label>
</form>

<?php
if (isset($_POST['addAnswer'])) {
    $questionType = selectQuestion($questId);
    $nbAnswer = intval($questionType['nbAnswer']);
 
    if ($questionType['digits'] == 'N' && $questionType['ordered'] == 'N' && $nbAnswer < 5) {
        echo '1';
?>
<form method="post">
    <label>Saisissez la réponse à ajouter : <input type="text" name="questionToAdd"></label>
    <input type="radio" name="result">
    <input type="submit" value="OK">
</form>
<?php }
    elseif ($questionType['digits'] == 'Y' && $nbAnswer == 0) {
        echo '2';
?>
<form method="post">
    <label>Saisissez le bon chiffre à la question : </label>
    <input type="number" name="number">
    <input type="submit" value="OK">
</form>

<?php }
    elseif ($questionType['ordered'] == 'Y' && $nbAnswer < 5) {
        echo '3';
?>   
<form method="post">
    <label>Saisissez la réponse à la question et renseignez son ordre : </label><br/>
    <span>Réponse : </span><textarea name="answer" id="answers" cols="50" rows="1"></textarea>
    <input type="number" name="order" min="1" max="5">
    <input type="submit" value="OK">
</form>
<?php } else echo 'Aucune réponse à ajouter!';

} 