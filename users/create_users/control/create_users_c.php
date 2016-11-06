<?php
if (session_status() === PHP_SESSION_NONE) session_start();
include '../../../admin/model/bdd_connect_m.php';
include '../model/create_user_m.php';

unset($_SESSION['duplicateUser']);
unset($_SESSION['createdUser']);
unset($_SESSION['newUserId']);

if(isset($_POST['newUser']) && isset($_POST['newPassword'])) {
    $newUser = htmlspecialchars($_POST['newUser']);
    $newPassword = sha1('Dark'.$_POST['newPassword'].'Vador');
    $checkNewUser = checkNewUser($newUser);
    
    if ($checkNewUser[0] > 0){
        $_SESSION['duplicateUser'] = 'Un utilisateur avec le même nom existe déja, veuillez saisir un autre nom !';
    } else {
    $newUserId = createUser($newUser, $newPassword);
    if ($newUserId) {
        $_SESSION['createdUser'] = 'l\'utilisateur '.'<b>'.$newUser.'</b>'.' a été créé!'; 
        $_SESSION['newUserId'] = $newUserId;
    }
    }
}

include '../view/create_users.php';
