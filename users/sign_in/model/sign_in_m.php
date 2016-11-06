<?php
function signIn($username, $password) {
    global $bdd;
    $data = $bdd->prepare('SELECT user_id, user FROM users WHERE user = :user and password = :password;');
    $data->bindParam(':user', $username, PDO::PARAM_STR);
    $data->bindParam(':password', $password, PDO::PARAM_STR);
    $data->execute();
    return $data->fetch();
}