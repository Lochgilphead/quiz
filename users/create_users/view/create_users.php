<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Créez un utilisateur</title>
    </head>
    <body>
        <section>
            <fieldset>
                <legend>Veuillez saisir un nom d'utilisateur et un mot de passe</legend>
                <form action="../control/create_users_c.php" method="post">
                    <label>Utilisateur : <input type='text' name="newUser" maxlength='20' required></label>
                    <label>Mot de passe :  <input type='password' name="newPassword" maxlength='20' required></label>
                    <input type="submit" value="Validez!">                    
                </form>           
            </fieldset>
            <?php if(isset($_SESSION['duplicateUser'])) echo '<br><b>'.$_SESSION['duplicateUser'].'</b>';?>
            <?php
                  if(isset($_SESSION['createdUser'])) { 
                      echo '<br>'.$_SESSION['createdUser'].'<br>';?>
            <form action="../../../quizzes_list/controller/quizzes_list_c.php" method="post">
                <input type="hidden" name="userId" value="<?php echo $_SESSION['newUserId'];?>">
                <input type="hidden" name="user" value="<?php echo $newUser;?>">
                <br><span>Accédez aux quizs : </span>
                <input type="submit" value="Quiz!">               
            </form>
            
                  <?php }?>
        </section>
    </body>
</html>
