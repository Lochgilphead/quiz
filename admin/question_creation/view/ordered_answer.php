<fieldset>
    <legend><?php echo $questionCreated['question']?></legend>
    <form method="post">
                        <br/><label>Saisissez les réponses (au moins 2) à la question et renseignez l'ordre des réponses : </label><br/>
                        <span>Réponse 1: </span><textarea name="answer1" id="answers" cols="50" rows="1"></textarea>
                        <input type="number" name="number1" min="1" max="5">
                        <br/>
                        <span>Réponse 2: </span><textarea name="answer2" id="answers" cols="50" rows="1"></textarea>
                        <input type="number" name="number2" min="1" max="5">
                        <br/>                      
                        <span>Réponse 3: </span><textarea name="answer3" id="answers" cols="50" rows="1"></textarea>
                        <input type="number" name="number3" min="1" max="5">
                        <br/>
                        <span>Réponse 4: </span><textarea name="answer4" id="answers" cols="50" rows="1"></textarea>
                        <input type="number" name="number4" min="1" max="5">
                        <br/>
                        <span>Réponse 5: </span><textarea name="answer5" id="answers" cols="50" rows="1"></textarea>
                        <input type="number" name="number5" min="1" max="5">
                        <br/>
                        <input type="hidden" name="ordered">
                        <input type="submit" value="OK">
    </form> 
</fieldset>