<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Vos résultats par quiz</title>
        <link rel="stylesheet" href="../../quizz_details/view/quiz_details.css">
    </head>
    <body>
        <header>
            <h6><a href="../../quizzes_list/controller/quizzes_list_c.php">Retour à la liste des quiz...</a></h6>
            <h5><?php echo $user.', vos perfs:'?></h5> 
        </header>
        <section>
            cliquez sur un quiz pour afficher l'historique de vos réponses :
            <table>
                <thead>
                    <tr>
                        <th>Quizs</th><th>Meilleurs résultats</th><th>Date</th><th>Nb de tentatives</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($quizResults as $quizResult){;?>
                    <tr>                        
                        <td><a href="../controller/historic_user_quiz_c.php?quizId=<?php echo $quizResult['quiz_id'];?>&quiz=<?php echo $quizResult['quiz'];?>"><?php echo $quizResult['quiz'];?></a></td>
                        <td><?php echo $quizResult['resultats'].'%';?></td>
                        <td><?php echo $quizResult['date'];?></td>
                        <td><?php echo $quizResult['tentatives'];?></td>
                    </tr>
                    <?php }?>
                </tbody>
            </table>
        </section>
    </body>
</html>
