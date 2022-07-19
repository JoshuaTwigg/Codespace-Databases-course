<?php
// Storing our mysqli class parameters in variables
$servername = "localhost";
$username = "root";
$password = "root";
$dbName = "tasks challenge";

// Using the above variables as parameter values
$conn = new mysqli($servername, $username, $password,$dbName); // Create connection

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully HOORAY!!!!!!!!!";


$id = $_POST['id'];
$task = $_POST['task'];
$date = $_POST['date'];
$dateCreated = $_POST['dateC'];

echo "<p>Hello $id $task $date $dateCreated</p>";


$sql = " INSERT INTO y (id,task,numm,num) VALUES ('$id','$task','$date','$dateCreated')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
  }else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  $conn->close();
?>