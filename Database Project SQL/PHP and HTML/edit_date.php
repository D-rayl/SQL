<?php
$Edit = $_POST['date'];
$Inv = $_POST['inv'];
$username = 'root';
$password = '';
try 
{
$conn = new PDO('mysql:host=localhost;dbname=catering', $username, $password); 
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare('UPDATE bookings SET event_date = :Edit WHERE invoice_number = :Inv');
$stmt->bindParam(':Edit', $Edit, PDO::PARAM_STR);
$stmt->bindParam(':Inv', $Inv, PDO::PARAM_STR);
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