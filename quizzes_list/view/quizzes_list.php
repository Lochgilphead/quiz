<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Liste des quizs</title>
        <link rel="stylesheet" href="../view/quiz_details.css">
    </head>
    <body>
        <header>
            <h4><a href="../../admin/controller/actions_admin_c.php">Création de quiz</a></h4>
            <h1>Liste des quizs :</h1>
        </header>
        <section>
            <?php
            foreach ($listQuiz as $quiz) {
                ?>
            <div><a href="../../quizz_details/controller/quiz_details_c.php?quizId=<?php echo $quiz['quizId'];?>"><?php echo $quiz['quiz'].' ';?></a><span><?php echo $quiz['nbQuestions'].' questions...';?></span></div><br>
            <?php 
            } ?>
        </section>
    </body>
</html>