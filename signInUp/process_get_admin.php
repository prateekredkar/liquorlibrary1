<?php
require_once '../connection.php';
session_start();
//This script will get a selected users details.

//Get the values from the form

$email = $_REQUEST['email'];
$password = $_REQUEST['password'];


$selectQuery = "select * from users where email='" . $email . "' and typeID=0";


if ($result = mysqli_query($connection, $selectQuery)) {

    $result_arr = mysqli_fetch_assoc($result);
    // print_r($result_arr);

    // 0 = wrong password; 1 = email not found 3 = OK
    if ($email == $result_arr['email']) {
        if ($password == $result_arr['password']) {
            $_SESSION['user'] = $result_arr;
            $_SESSION['admin'] = $result_arr;
            echo 3;
        } else {
            echo 0;
        }
    } else {
        echo 1;
    }
}