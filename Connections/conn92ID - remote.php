<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_conn92ID = "187.108.194.165";
$database_conn92ID = "idcom_p0217";
$username_conn92ID = "idcom_admin";
$password_conn92ID = "ka5vo0ry";
$conn92ID = mysql_pconnect($hostname_conn92ID, $username_conn92ID, $password_conn92ID) or trigger_error(mysql_error(),E_USER_ERROR); 
?>