<fieldset>
    <legend><?php echo $questionCreated['question']?></legend>
    <form method="post">
                        <br/><label>Saisissez les réponses (au moins 2) à la question et cochez la case si la réponse est bonne : </label><br/>
                        <span><?php if (isset($_SESSION['errorNoQuestion'])) echo $_SESSION['errorNoQuestion'];?></span><br>
                        <span><?php if (isset($_SESSION['errorMinAnswer'])) echo $_SESSION['errorMinAnswer'];?></span><br>
                        <span><?php if (isset($_SESSION['errorDuplicateAnswer'])) echo $_SESSION['errorDuplicateAnswer'];?></span><br>
                        <span><?php if (isset($_SESSION['errorNoCorrectAnswer'])) echo $_SESSION['errorNoCorrectAnswer'];?></span><br>
                        <span>Réponse 1: </span><textarea name="answer1" id="answers" cols="50" rows="1" placeholder="<?php if (isset($_SESSION['answer'])) echo 'Resaisir la réponse : '.$_SESSION['answer'];?>"></textarea>
                        <input type="checkbox" name="result1" value="1">
                        <br/>
                        <span>Réponse 2: </span><textarea name="answer2" id="answers" cols="50" rows="1"></textarea>
                        <input type="checkbox" name="result2" value="2">
                        <br/>                      
                        <span>Réponse 3: </span><textarea name="answer3" id="answers" cols="50" rows="1"></textarea>
                        <input type="checkbox" name="result3" value="3">
                        <br/>
                        <span>Réponse 4: </span><textarea name="answer4" id="answers" cols="50" rows="1"></textarea>
                        <input type="checkbox" name="result4" value="4">
                        <br/>
                        <span>Réponse 5: </span><textarea name="answer5" id="answers" cols="50" rows="1"></textarea>
                        <input type="checkbox" name="result5" value="5">
                        <br/>
                        <input type="hidden" name="multiple">
                        <input type="submit" value="OK">
    </form> 
</fieldset>

