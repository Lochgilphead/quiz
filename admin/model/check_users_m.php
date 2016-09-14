<?php
function checkUsers($user,$password) {
    global $bdd;
    $data = $bdd->prepare('select user, admin from users where user = :user and password = :password');
    $data->execute(array(
        'user' => $user,
        'password' => $password
    ));
    
    return $data->fetch();
}

