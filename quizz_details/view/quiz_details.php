<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8"/>
        <title>
            <?php
                echo $quiz['quiz'];
            ?>
        </title>
    </head>
    <body>
        <nav>
            <a href="../../quizzes_list/controller/quizzes_list_c.php">Retour à la liste des quiz...</a>
        </nav>
        <header id="quiz">
        <?php echo $quiz['quiz'];?><br>
        </header>
       
        <section>
            <form method="post">
        <?php      
        foreach ($question as $questions) {?>
                <ul class="<?php echo 'q'.$questions['question_id'];?>">
        <?php echo '<br>'.'<h4>'.(($nbTotQuestions+1)-($nbQuestions--)).' > '.$questions['question'].'</h4>';?>
        
        <?php
            foreach ($answer as $answers) {
                if ($questions['question_id'] == $answers['question_id']){
                    
                    ?>
            <li id="answer"><label>
                <?php echo $answers['answer'];
                    
                    include '../view/quiz_details_questions.php';                 
                //Affichage des bonnes et des mauvaises réponses selon le type de question
                if (isset($results)){                                        
                    if ($questions['q_order'] == 'N' && $questions['q_digit'] == 'N') {
                        include '../controller/quiz_details_mcq_display_c.php';
                    } elseif ($questions['q_order'] == 'Y' && $questions['q_digit'] == 'N') {
                        include '../controller/quiz_details_order_display_c.php';
                    } elseif ($questions['q_order'] == 'N' && $questions['q_digit'] == 'Y') {
                        include '../controller/quiz_details_digit_display_c.php';
                    }
                }
                    ?>
                </label>
                <br>
                </li>
        
        <?php                
                    }              
            }
            
            ?>
        </ul>
      
        <?php

        }
       
        ?>
                <input type="submit" value="Go!">
        <?php if (isset($results)) {
            include '../controller/quiz_details_answers_generate_css_c.php';
        ?>
                <input type="submit" name="reset" value="Recommencez?">
        <?php }?>
                <aside class="result">
                    <?php if (isset($score)) echo $score;?>
                </aside>
            </form>
        </section>
    <link rel="stylesheet" href="../view/quiz_details.css"/>
    </body>
</html>
