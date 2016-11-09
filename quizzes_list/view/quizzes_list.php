<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Liste des quizs</title>
        <link rel="stylesheet" href="../view/quiz_details.css">
    </head>
    <body>
        <header>
            <nav>
                <h5><a href="../../users/sign_in/control/sign_in_c.php">Se connecter</a></h5>
                <h4><a href="../../admin/controller/actions_admin_c.php">Création de quiz</a></h4>
            </nav>
            <h1>Liste des quizs :</h1>
        </header>
        <section>
            
            <?php
            if (isset($_SESSION['user']) && isset($_SESSION['userId'])) {
                    echo 'Eh, '.'<b>'.$_SESSION['user'].'! </b>'.'Choisissez un quiz...<br><br>';
                } else {
                    header('location: ../../users/sign_in/control/sign_in_c.php');
                }
            
            foreach ($listQuiz as $quiz) {
                ?>
            <div><a href="../../quizz_details/controller/quiz_details_c.php?quizId=<?php echo $quiz['quizId'];?>"><?php echo $quiz['quiz'].' ';?></a><span><?php echo '...'.$quiz['nbQuestions'].' questions...';?></span>
            <?php if (isset($_SESSION['submittedQuiz']) && $quiz['quizId'] == $_SESSION['quizId']) {
                echo $_SESSION['submittedQuiz'].' Votre score est de : <b>'.$_SESSION['previousResult'].'%</b>';                
                }?></div>
            <br>
            <?php 
            } ?>
        </section>
    </body>
</html>