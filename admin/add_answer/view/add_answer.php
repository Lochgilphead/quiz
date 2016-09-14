
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
?>
<form method="post">
    <label>Saisissez la réponse à ajouter : <input type="text" name="questionToAdd"></label>
    <input type="radio" name="result">
    <input type="submit" value="OK">
</form>
<?php } ?>
