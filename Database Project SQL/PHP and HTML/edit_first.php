<?php
$Edit = $_POST['first'];
$Id = $_POST['id'];
$username = 'root';
$password = '';
try 
{
$conn = new PDO('mysql:host=localhost;dbname=catering', $username, $password); 
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare('UPDATE clients SET first_name = :Edit WHERE id_client = :Id');
$stmt->bindParam(':Edit', $Edit, PDO::PARAM_STR);
$stmt->bindParam(':Id', $Id, PDO::PARAM_STR);
$stmt->execute();

echo '<H1>';
echo 'Your record has been successfully updated';
echo '</H1>';
}
catch(PDOException $e) 
{
  echo 'ERROR: ' . $e->getMessage();
}
$conn = null;
echo "</table>";
?>