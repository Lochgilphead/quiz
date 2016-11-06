<?php
if (session_status() === PHP_SESSION_NONE) session_start();
include '../../../admin/model/bdd_connect_m.php';
include '../model/sign_in_m.php';

session_destroy();

if (isset($_POST['username']) && isset($_POST['password'])) {
    $username = htmlspecialchars($_POST['username']);
    $password = sha1('Dark'.$_POST['password'].'Vador');

    $user = signIn($username, $password);

    if (isset($user['user'])) {
        $_SESSION['user'] = $user['user'];
        $_SESSION['userId'] = $user['user_id'];
        header('location: ../../../quizzes_list/controller/quizzes_list_c.php');
    } else $wrongUserPwd = '<br><b>La combinaison \'utilisateur - mot de passe\' saisie n\'existe pas!</b>';
}

include '../view/sign_in.php';
