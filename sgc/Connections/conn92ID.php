<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_conn92ID = "187.108.203.223:3306";
$database_conn92ID = "idcom_bsgc";
$username_conn92ID = "idcom_adminsgc";
$password_conn92ID = "AAyvHEYvVa4EUnPyjVCaw3c";
$conn92ID = mysql_pconnect($hostname_conn92ID, $username_conn92ID, $password_conn92ID) or trigger_error(mysql_error(),E_USER_ERROR); 
?>