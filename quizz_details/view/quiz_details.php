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
        <?php echo '<br>'.'<h4>'.$questions['question'].'</h4>';
        //$b = result($quizId, $questions['question_id']);?>
        
        <?php
            foreach ($answer as $answers) {
                if ($questions['question_id'] == $answers['question_id']){
                    
                    ?>
            <li id="answer"><label>
                <?php echo $answers['answer'];?>
                    
                    <?php include '../view/quiz_details_questions.php';
                 //   $b = result($quizId, $questions['question_id']);
                    ?>
                    
                        
                <?php
               /* if (isset($results)){
                    
                    foreach ($b as $c) {
                        if ($c[0] == $answers['answer_id']) {
                            $goodAnswer = $questions['question_id'].'-'.$c[0];
                            echo '<b>'.$goodAnswer.'</b>';
                            $theResult = array('id' => $goodAnswer);//, 'quest' => $questions['question_id'], 'questGood' => $goodAnswer) ;
                            echo $theResult['id'];
                                    foreach($results as $questionID => $answerID ){
                                        if (($questionID == $goodAnswer) || $answerID == $c[0]){
                                            $yourResult = array('id' => $goodAnswer, 'quest' => $questions['question_id'], 'questGood' => ($questions['question_id'].'-'.$answerID));
                                        } else {
                                            $yourResult = array('id' => $goodAnswer, 'quest' => $questions['question_id'], 'questGood' => ($questions['question_id'].'-'.'0'));
                                        }
                                        //if (isset($yourResult))var_dump($yourResult);
                                    }
                                    
                                    
                            
                        }
                    }
                 /*   
                    if (in_array($answers['answer_id'], $results)) {
                        $result = result($quizId, $questions['question_id']);
                    
                        //foreach ($results as $a) {
                        var_dump($result);
                        foreach($result as $a) {
                            echo $a[0];
                        if ($a[0] == $answers['answer_id']) { //$answers['answer_id']
                            $_SESSION['goodAnswer'] = $_SESSION['goodAnswer'] + 1; ?>
                            
                <span class="good">Bonne réponse!</span>
                
                        <?php
                        } else {; ?>
                <span class="bad">Mauvaise réponse!</span>
                <?php };
                        }
                }}

                */
                    ?>
                </label>
                <br>
                </li>
        
        <?php
             /*   }*/
                
                                        }
                
            }
        // if (isset($yourResult))var_dump($yourResult);
        //    echo '<br>';
        //if (isset($theResult))var_dump($theResult);    
        //    echo '<br>';
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
