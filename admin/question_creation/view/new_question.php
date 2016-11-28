<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Créer de nouvelles questions</title>
    </head>
    <body>
        <section>
            <fieldset>
                <legend>Créez des questions et des réponses pour un quiz</legend><br/>
                <form method="post">
                    <label for="questions">Choisissez votre quiz : </label><br/>
                    <select name="quizList">

                        <?php
                        foreach ($quizList as $quiz) {
                        ?>
                        <option value="<?php echo $quiz[1]?>"><?php echo $quiz[0]?></option>
                        <?php
                        }                    
                        ?>
                        
                    </select>
                    <div>
                        <br/><label for="questions">Saisissez votre question : </label><br/>
                        <textarea name="question" id="questions" cols="50" rows="1"></textarea>
                        <span><?php if (isset($_SESSION['errorNoQuestion'])) echo $_SESSION['errorNoQuestion'];
                                    if (isset($_SESSION['duplicateQuestion'])) echo $_SESSION['duplicateQuestion'];?></span><br>
                        <div>
                            [QCM] Question avec plusieurs bonnes réponses?
                            <label>Oui :<input type="radio" name="reponse" value="Y"></label>
                            <label>Non :<input type="radio" name="reponse" value="N" checked></label>
                        </div>
                        <div>
                            [Nombre à saisir] Question avec un chiffre comme unique réponse?
                            <label>Oui :<input type="radio" name="digit" value="Y"></label>
                            <label>Non :<input type="radio" name="digit" value="N" checked></label>
                        </div>
                        <div>
                            [Eléments à ordonner] Question avec un ordre à renseigner comme réponse?
                            <label>Oui :<input type="radio" name="order" value="Y"></label>
                            <label>Non :<input type="radio" name="order" value="N" checked></label>
                        </div>
                        <div>
                            <input type="submit" value="Validez!">
                        </div>
                    </div>
                </form>
            </fieldset>
            
                <!--
                    <div>
                        <br/><label>Saisissez les réponses (au moins 2) à la question et cochez la case si la réponse est bonne : </label><br/>
                        <span><?php if (isset($_SESSION['errorNoQuestion'])) echo $_SESSION['errorNoQuestion'];?></span><br>
                        <span><?php if (isset($_SESSION['errorMinAnswer'])) echo $_SESSION['errorMinAnswer'];?></span><br>
                        <span><?php if (isset($_SESSION['errorDuplicateAnswer'])) echo $_SESSION['errorDuplicateAnswer'];?></span><br>
                        <span><?php if (isset($_SESSION['errorNoCorrectAnswer'])) echo $_SESSION['errorNoCorrectAnswer'];?></span><br>
                        <span>Réponse 1: </span><textarea name="answer1" id="answers" cols="50" rows="1" placeholder="<?php if (isset($_SESSION['answer'])) echo 'Resaisir la réponse : '.$_SESSION['answer'];?>"></textarea>
                        <input type="radio" name="result" value="1">
                        <br/>
                        <span>Réponse 2: </span><textarea name="answer2" id="answers" cols="50" rows="1"></textarea>
                        <input type="radio" name="result" value="2">
                        <br/>                      
                        <span>Réponse 3: </span><textarea name="answer3" id="answers" cols="50" rows="1"></textarea>
                        <input type="radio" name="result" value="3">
                        <br/>
                        <span>Réponse 4: </span><textarea name="answer4" id="answers" cols="50" rows="1"></textarea>
                        <input type="radio" name="result" value="4">
                        <br/>
                        <span>Réponse 5: </span><textarea name="answer5" id="answers" cols="50" rows="1"></textarea>
                        <input type="radio" name="result" value="5">
                        <br/>
                    </div>
                    <input type="submit" value="OK">
                </form> 
            </fieldset>
                -->
        </section>
    </body>
</html>
