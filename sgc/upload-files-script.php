<?php 

// Verifica se o campo PDF está vazio
if ($_FILES['pdf']['name'] != "") {

// Caso queira mudar o nome do arquivo basta descomentar a linha abaixo e fazer a modificação
$_FILES['pdf']['name'] = $_POST['edt-filename'].".pdf";

// Move o arquivo para uma pasta
move_uploaded_file($_FILES['pdf']['tmp_name'],"../images/content/".$_POST['edt-dir']."/".$_FILES['pdf']['name']);

// $pdf_path é a variável que guarda o endereço em que o PDF foi salvo (para adicionar na base de dados)
$pdf_path = "../images/content/".$_POST['edt-dir']."/".$_FILES['pdf']['name'];

echo "Arquivo enviado com sucesso!";

} else {
// Caso seja falso, retornará o erro
 echo "Não foi possível enviar o arquivo";
}


//close window
if(isset($_POST['edt-filename']))
{
echo  "<script type='text/javascript'>";
echo "window.close();";
echo "</script>";
}


?>