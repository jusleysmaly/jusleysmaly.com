<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_conn92ID = "localhost:3306";
$database_conn92ID = "db_p0217";
$username_conn92ID = "root";
$password_conn92ID = "root";
$conn92ID = mysql_pconnect($hostname_conn92ID, $username_conn92ID, $password_conn92ID) or trigger_error(mysql_error(),E_USER_ERROR); 
?>