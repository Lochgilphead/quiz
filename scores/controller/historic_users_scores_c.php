<?php
if (session_status() === PHP_SESSION_NONE) session_start();

include '../../admin/model/bdd_connect_m.php';
include '../model/historic_display_answers_m.php';

if (isset($_SESSION['userId']) && isset($_SESSION['user'])) {
    $user = $_SESSION['user'];
    $userId = $_SESSION['userId'];
    $quizResults = displayHistoric($userId);
    include '../view/historic_users_scores.php';
}

