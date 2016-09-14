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
        <?php echo '<br>'.'<h4>'.$questions['question'].'</h4>';?>
        
        <?php
            foreach ($answer as $answers) {
                if ($questions['question_id'] == $answers['question_id']){
                    ?>
            <li id="answer"><label>
                <?php echo $answers['answer'];?><input type="radio" name="result[<?php echo $questions['question_id']?>]" value="<?php echo $answers['answer_id'];?>">
                
                <?php
                if (isset($results)){
                    
                    if (in_array($answers['answer_id'], $results)) {
                        $result = result($quizId, $questions['question_id']);
                    
                        if ($result['answer_id'] == $answers['answer_id']) {
                            $_SESSION['goodAnswer'] = $_SESSION['goodAnswer'] + 1; ?>
                            
                <span class="good">Bonne réponse!</span>
                
                        <?php
                        } else {; ?>
                <span class="bad">Mauvaise réponse!</span>
                <?php };
                    }
                }

                ?>
                </label>
                <br>
                </li>
        
        <?php
                }
            }?>
        </ol>
        
        <?php
        }    
        ?>
                <input type="submit" value="Go!">
        <?php if ($_SESSION['checkScore'] > 1 || isset($results)) {
        ?>
                <input type="submit" name="reset" value="Recommencez?">
        <?php }?>
                <aside class="result">
                    <?php if (isset($score)) echo $score;?>
                </aside>
            </form>
        </section>
    </body>
</html>
