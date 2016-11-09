<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Utilisateur Existant</title>
    </head>
    <body>
        <section>           
            <form method="post">
                <fieldset>
                    <legend>Veuillez saisir votre nom d'utilisateur et votre mot de passe</legend>
                    <label>Votre nom d'utilisateur : <input type="text" name="username" maxlength="20" required></label>
                    <label>Votre mot de passe : <input type="password" name="password" maxlength="20" required></label>
                    <input  type="submit" value="Validez!">
                </fieldset>                                    
            </form>
            <?php if (isset($wrongUserPwd)) echo $wrongUserPwd;?>
        </section>
    </body>
</html>
