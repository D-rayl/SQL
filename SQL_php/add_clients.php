<?php
$Id = $_POST['InsertId'];
$First = $_POST['InsertFirstName'];
$Family = $_POST['InsertFamilyName'];
$Address = $_POST['InsertAddress'];
$Suburb = $_POST['InsertSuburb'];
$Phone = $_POST['InsertPhone'];
$Comment = $_POST['InsertComment'];
$username = 'root';
$password = '';
try 
{
$conn = new PDO('mysql:host=localhost;dbname=catering', $username, $password); 
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare('INSERT clients(id_client, first_name, family_name, address, fk_suburb, phone, comment) VALUES (:Id, :First, :Family, :Address, :Suburb, :Phone, :Comment)');
$stmt->bindParam(':Id', $Id, PDO::PARAM_STR);
$stmt->bindParam(':First', $First, PDO::PARAM_STR);
$stmt->bindParam(':Family', $Family, PDO::PARAM_INT);
$stmt->bindParam(':Address', $Address, PDO::PARAM_INT);
$stmt->bindParam(':Suburb', $Suburb, PDO::PARAM_INT);
$stmt->bindParam(':Phone', $Phone, PDO::PARAM_INT);
$stmt->bindParam(':Comment', $Comment, PDO::PARAM_INT);
$stmt->execute();
echo '<H1>';
echo 'Your record has been successfully added';
echo '</H1>';
}
catch(PDOException $e) 
{
  echo 'ERROR: ' . $e->getMessage();
}
$conn = null;
echo "</table>";
?>