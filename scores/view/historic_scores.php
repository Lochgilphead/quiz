<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Hall Of Fame</title>
    </head>
    <body>
        <nav><a href="../../quizzes_list/controller/quizzes_list_c.php">Retour aux quizs</a></nav>
        <section>
            <?php
            foreach ($quiz as $quizName){
                echo '<ol start="1" type="1" class="quiz">'.'<h3>'.$quizName.'</h3>';
                foreach($scoreQuiz as $score){
                    if ($score['quiz'] == $quizName){
                        if ($_SESSION['user'] == $score['user']){
                            echo '<li><b>'.$score['results'].'%'.'-'.$score['user'].'</b></li>';
                        } else {
                            echo '<li>'.$score['results'].'%'.'-'.$score['user'].'</li>';
                        }
                    }
                }
                echo '</ol><br>';
            }
            ?>
        </section>
    </body>
</html>
