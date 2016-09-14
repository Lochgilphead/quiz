<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Console Administrateur</title>
    </head>
    <body>
        <section>
            <aside>
                <a href="../../quizzes_list/controller/quizzes_list_c.php">Retour aux quizs</a>
            </aside>
            <fieldset>
                <legend>
                    <?php echo 'Bienvenue dans la console d\'administration '.'<b>'.$adminSession.'</b>'.'<br/>';
                    ?>
                </legend>
                <div>Les différentes actions possibles sont : </div>
            <form method="post">
                <label>Créer un nouveau quiz<input type="submit" value="Quiz" name="newQuiz"></label><br/>
                <label>Créer des questions et des réponses<input type="submit" value="Questions" name="newQuestions"></label><br/>
                <label>Ajouter des réponses aux questions<input type="submit" value="Réponses" name="newAnswers"></label><br/>
            </form>
            </fieldset>
        </section>
    </body>
</html>
