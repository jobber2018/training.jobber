<?php
	$servername = "localhost";
	$username = "truonghm";
	$password = "123456";
	$dbname = "it-training";
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	/*
	$sql = "SELECT * FROM course_outline where course_id=1";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        	echo "id: " . $row["id"]. " - Name: " . $row["lesson_name"]. " " . $row["parent"]. "<br>";
		}
	} else {
		echo "0 results";
	}
	*/
//$conn->close();
?>