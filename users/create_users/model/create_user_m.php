<?php
function checkNewUser($newUser) {
    global $bdd;
    $data = $bdd->prepare('SELECT count(*) FROM users
            WHERE user = :user;');
    $data->bindParam(':user', $newUser, PDO::PARAM_STR);
    $data->execute();
    return $data->fetch();
}

function createUser($newUser, $newPassword) {
    global $bdd;
    $data = $bdd->prepare('INSERT INTO users (user, password, creation_date)
                            VALUES (:user, :password, now());');
    $data->bindParam(':user', $newUser, PDO::PARAM_STR);
    $data->bindParam(':password', $newPassword, PDO::PARAM_STR);
    $data->execute();
    return $bdd->lastInsertId(); 
}

