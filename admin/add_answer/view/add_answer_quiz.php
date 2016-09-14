<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Ajoutez des réponses à une question</title>
    </head>
    <body>
        <section>
            <fieldset>
                <form method="post">
                    <select name="quizList">
                        <option value="titre"><?php echo 'Choisir un quiz';?></option>
                        <?php
                        foreach ($quizList as $quiz) {
                        ?>
                        <option value="<?php echo $quiz[1].'-'.$quiz[0];?>"><?php echo $quiz[0];?></option>
                        <?php
                        }                    
                        ?>
                    </select>
                    <input type="submit" value="OK">
                </form>
            </fieldset>
        </section>
    </body>
</html>
