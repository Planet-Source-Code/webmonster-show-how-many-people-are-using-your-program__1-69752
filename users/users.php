<?php

/*
Need help with code? Contact me by adding webmonster123@hotmail.com to your msn or email j.webmonster@gmail.com
*/

$type = $_GET['type'];

$hits=file_get_contents("users.txt"); 

if ($type=="1"){
file_put_contents("users.txt", $hits+=1); 
} elseif ($type=="2"){
file_put_contents("users.txt", $hits-=1); 
}

echo $hits;

?>