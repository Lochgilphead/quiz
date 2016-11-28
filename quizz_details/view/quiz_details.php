<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" href="../view/quiz_details.css"/>
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
        <ol id="question">
        <?php echo '<br>'.'<h4>'.(($nbTotQuestions+1)-($nbQuestions--)).' > '.$questions['question'].'</h4>';
        //$b = result($quizId, $questions['question_id']);?>
        
        <?php
            foreach ($answer as $answers) {
                if ($questions['question_id'] == $answers['question_id']){
                    
                    ?>
            <li id="answer"><label>
                <?php echo $answers['answer'];?>
                    
                    <?php include '../view/quiz_details_questions.php';
                    $bonsResultats = result($quizId, $questions['question_id']);
                    ?>
                    
                        
                <?php
                
                if (isset($results)){
                    
                    $nbr = array();
                    
                    foreach ($bonsResultats as $bonsResultat) {
                        if ($bonsResultat[0] == $answers['answer_id']) {
                            $nbr = $answers['answer_id'];                           
                            echo '<span class="good">Bonne réponse!</span>';
                        }                      
                    }
                    
                    foreach ($results as $answerID => $questionID) {
                        if ($questionID == $questions['question_id']) {
                            if ($answerID == $answers['answer_id']) {
                                if (isset($nbr[0]) != $answerID) {
                                echo '<span class="bad">Mauvaise réponse!</span>';
                                }
                            }
                        }
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
        </ol>
      
        <?php

        }
       
        ?>
                <input type="submit" value="Go!">
        <?php if (isset($results)) {
        ?>
                <input type="submit" name="reset" value="Recommencez?">
        <?php }?>
                <aside class="result">
                    <?php if (isset($score)) echo $score;?>
                </aside>
            </form>
            <?php
            if (isset($theResult))var_dump($theResult);    
            echo '<br>';
            ?>
        </section>
    </body>
</html>
