<?php
if (session_status() === PHP_SESSION_NONE) session_start();
include '../model/bdd_connect_m.php';
include '../model/check_users_m.php';

if(!empty($_POST['user']) && !empty($_POST['password'])) {
        $user = htmlspecialchars(filter_input(INPUT_POST,'user'));
        $password = htmlspecialchars(sha1('dark'.$_POST['password'].'vador'));
        $user = checkUsers($user,$password);
        if(!empty($user) && $user['admin'] == 'Y') {
            $_SESSION['adminSession'] = $user['user'];
        }
    }
if (isset($_SESSION['adminSession'])) {
    $adminSession = $_SESSION['adminSession'];
    include '../view/actions_admin.php';
    include './unset_sessions_c.php';    
    include '../quiz_creation/controller/new_quiz_c.php';
    include '../question_creation/controller/new_question_c.php';
    include '../add_answer/controller/add_answer_c.php';
} else include '../view/login.php';
    
    
    
    
//    if (empty($_POST['user']) && )    



    


