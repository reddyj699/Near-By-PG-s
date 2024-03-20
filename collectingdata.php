<?php
include 'connect.php';

$sql = "SELECT pgname FROM pgdata";
$result = $mysqli->query($sql);
$pgnames = array();
if ($result) {
    while ($row = $result->fetch_assoc()) {
        $pgnames[] = $row['pgname'];
    }
}
?>

<!-- 
Online HTML, CSS and JavaScript editor to run code online.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 
  <title>Browser</title>
</head>

<body>
 <script>
    
 </script>
</body>

</html>
