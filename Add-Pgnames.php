<?php
// process_form.php

// Assuming you have the 'connect.php' file with the database connection code.
include 'connect.php';

if (isset($_POST['submit'])) {
    // Retrieve the form data
    $pgname = $_POST['pgname'];
    $rent1 = $_POST['rent1']; // Changed from $_POST['rent'] to $_POST['rent1']
    $rent2 = $_POST['rent2']; // Added for rent for 2-share
    $rent3 = $_POST['rent3']; // Added for rent for 3-share
    $advance = $_POST['advance'];
    $rooms = $_POST['rooms'];
    $electricity = $_POST['electricity'];
    $contactno = $_POST['moblieno'];
    $share = $_POST['share'];
    $gender = $_POST['gender'];
    $distance = $_POST['distance'];
    
    // Note: You haven't retrieved the 'note' value from the form. You need to add an input field for 'note' in your HTML form.

    // Check if the pgname already exists in the database
    $check_query = "SELECT * FROM `pgdata` WHERE pgname = '$pgname'";
    $check = $mysqli->query($check_query);
    if ($check->num_rows > 0) {
        echo "The pgname already exists in the database. Please choose a different pgname.";
        echo '<script>setTimeout(function(){ window.location.href = "' . $_SERVER['PHP_SELF'] . '"; }, 3000);</script>';
        exit;
    } else {
        // Insert data into the 'pgdata' table
        $sql = "INSERT INTO `pgdata` (pgname, rent, advance, rooms, electricity, contactno, share, gender, distance, rent2, rent3)
                VALUES ('$pgname', '$rent1', '$advance', '$rooms', '$electricity', '$contactno', '$share', '$gender', '$distance', '$rent2', '$rent3')";
        $result = $mysqli->query($sql);

        if ($result) {
            echo "Data stored successfully.";
            echo '<script>setTimeout(function(){ window.location.href = "' . $_SERVER['PHP_SELF'] . '"; }, 3000);</script>';
        } else {
            die(mysqli_error($mysqli));
        }
    }
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Browser</title>
</head>

<body>
    <div id="change">
    
        <input type="text" id="username" placeholder="Username" name="username"><br><br>
        <input type="password" id="password" placeholder="Password" name="password"><br><br>
        <button type="button" onclick="fun1()">Login</button>
        
    </div>
    <script>
    document.title="pgadmin";
        var username = "jaswanth9840";
        var password = "9100077859yj";
        var check_username = document.getElementById('username');
        var check_password = document.getElementById('password');

        function fun1() {
            if (username === check_username.value && password === check_password.value) {
                display();
            }
            else{
                alert("username and password are wrong");
            }
        }

        function display() {
            var change = document.getElementById('change');
            change.innerHTML = `<form method="post">
                <input type="text" id="name" placeholder="enter pgname" name="pgname"><br><br>
                <input type="text" id="rent" placeholder="rent for 1-share" name="rent1"><br><br>
                <input type="text" id="rent" placeholder="rent for 2-share" name="rent2"><br><br>
                <input type="text" id="rent" placeholder="rent for 3-share" name="rent3"><br><br>
                <input type="text" id="advance" placeholder="advance" name="advance"><br><br>
                <input type="text" id="rooms" placeholder="no. of rooms" name="rooms"><br><br>
                <input type="text" id="electricity" placeholder="electricity free or not" name="electricity"><br><br>
                <input type="text" id="furnished" placeholder="mobile no." name="moblieno"><br><br>
                <input type="text" id="distance" placeholder="distance from college" name="distance"><br><br>


                <br><br>

                <fieldset>
                    <legend>Share Type</legend>
                    <div>
                        <input type="radio" id="single" name="share" value="Single" checked>
                        <label for="single">Single Share</label>
                    </div>
                    <div>
                        <input type="radio" id="double" name="share" value="Double">
                        <label for="double">Double Share</label>
                    </div>
                    <div>
                        <input type="radio" id="triple" name="share" value="Triple">
                        <label for="triple">Triple share</label>
                    </div>
                </fieldset>
                <br><br>

                <fieldset>
                    <legend>Gender</legend>
                    <div>
                        <input type="radio" id="girl" name="gender" value="Girls" checked>
                        <label for="girl">Only for Girls</label>
                    </div>
                    <div>
                        <input type="radio" id="boy" name="gender" value="Boys">
                        <label for="boy">Only for Boys</label>
                    </div>
                    <div>
                        <input type="radio" id="cohead" name="gender" value="Co-head">
                        <label for="cohead">Co-head</label>
                    </div>
                </fieldset>
                <br><br>

                <button type="submit" name="submit">Submit</button>
            </form>`;
        }
    </script>
</body>

</html>
