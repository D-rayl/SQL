<?php
$Event_Date = $_POST['InsertDate'];
$Number_guests = $_POST['InsertNumGuests'];
$Client_Id = $_POST['InsertClientId'];
$Food_Id = $_POST['InsertFoodId'];

$username = 'root';
$password = '';
try 
{
$conn = new PDO('mysql:host=localhost;dbname=catering', $username, $password); 
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare('INSERT bookings(event_date, num_guests,fk_client,fk_food) VALUES (:Event_Date, :Number_guests, :Client_Id, :Food_Id)');

$stmt->bindParam(':Event_Date', $Event_Date, PDO::PARAM_STR);
$stmt->bindParam(':Number_guests', $Number_guests, PDO::PARAM_INT);
$stmt->bindParam(':Client_Id', $Client_Id, PDO::PARAM_INT);
$stmt->bindParam(':Food_Id', $Food_Id, PDO::PARAM_INT);
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