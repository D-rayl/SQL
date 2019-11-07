<?php
$Remove = $_POST['RemoveClient'];
$username = 'root';
$password = '';
try 
{
$conn = new PDO('mysql:host=localhost;dbname=catering', $username, $password); 
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare('DELETE FROM clients WHERE id_client = :Remove');
$stmt->bindParam(':Remove', $Remove, PDO::PARAM_STR);
$stmt->execute();
echo '<H1>';
echo 'Client has been successfully REMOVED';
echo '</H1>';
}
catch(PDOException $e) 
{
  echo 'ERROR: ' . $e->getMessage();
}
$conn = null;
echo "</table>";
?>