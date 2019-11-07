<?php
$Booking = $_POST['DeleteBooking'];
$username = 'root';
$password = '';
try 
{
$conn = new PDO('mysql:host=localhost;dbname=catering', $username, $password); 
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare('DELETE FROM bookings WHERE invoice_number = :Booking');
$stmt->bindParam(':Booking', $Booking, PDO::PARAM_STR);
$stmt->execute();
echo '<H1>';
echo 'Your record has been successfully REMOVED';
echo '</H1>';
}
catch(PDOException $e) 
{
  echo 'ERROR: ' . $e->getMessage();
}
$conn = null;
echo "</table>";
?>