<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
?>

<?php

#criacao do array
$mArr = array(
0=>array("tab1", "field1", "id1"),
1=>array("tab2", "field2", "id2")
);

#loop do array
$i = 0;
$c = count($mArr);
while($i < $c)
{
  $j=0;
  $c2 = count($mArr[$i]);
  while($j < $c2)
  {
    echo $mArr[$i][$j] . PHP_EOL;
    $j++;
  }
$i++;
}

?>