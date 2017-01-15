<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="../../quizz_details/view/quiz_details.css">
        <title>Historique des réponses : <?php echo $_SESSION['quiz'];?></title>
    </head>
    <body>
        <header>
            <h6><a href="../controller/historic_users_scores_c.php">Retour à vos résultats...</a></h6>
        </header>
        <section>
            <table class="historic">
                <caption>Quiz: <b><?php echo $_SESSION['quiz'];?></b></caption>
                <thead>
                    <tr class="date">
                        <th>
                            Questions
                        </th>
                        <?php
                        foreach ($resultIds as $resultId){//($resultIds as $resultId => $creationDate){?>
                        <th>    
                        <?php //echo 'Essai du: '.date('d/m/Y à H:i',  strtotime($creationDate));
                                $result = resultDate($resultId);
                                
                                echo $result['date'].'-Résultat: '.$result['results'].'%';
                        ?>
                        </th>
                        <?php }?>
                    </tr>
                </thead>
                <tbody>
                    
                    <?php foreach ($submission as $questions => $resultIds){ ?>
                    <tr>
                        <td>
                            <?php echo $questions;
                                    krsort($resultIds);
                            ?>
                        </td>
                            <?php foreach ($resultIds as $answers) { ?>
                        <td>
                                <?php foreach ($answers as $answer) {
                                    $replaceAnswer = str_replace('-', ' ', $answer);
                                   echo $replaceAnswer.' '; 
                                }?>
                        </td>
                            <?php }?>
                    </tr>
                        <?php
                    }
                         ?>
                    
                </tbody>
            </table>
        </section>
    </body>
</html>
