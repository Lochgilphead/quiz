
<div>Le quiz "<?php echo $_SESSION['quizName'];?>" contient les questions suivantes : </div>
            <fieldset>
                <form method="post">
                    <select name="questionList">
                        <option value="titre">Choisir une question: </option>
                        <?php
                        foreach ($questionList as $question) {
                        ?>
                        <option value="<?php echo $question[0].'-'.$question[1];?>"><?php echo $question[1];?></option>
                        <?php 
                        }
                        ?>
                    </select>
                    <input type="submit" value="OK">
                </form>
            </fieldset>