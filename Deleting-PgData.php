<?php
include 'connect.php';
include 'collectingdata.php';

if(isset($_POST['submittodelete'])){
    $name = $_POST['delete'];
    $sql = "DELETE FROM `pgdata` WHERE pgname = '$name'";
    $result = $mysqli->query($sql);
    if($result){
        echo "Deleting pgbox $name";
        echo '<script>setTimeout(function(){ window.location.href = "' . $_SERVER['PHP_SELF'] . '"; }, 3000);</script>';
    }
    else{
        die(mysqli_error($con));
    }
}

$pgnameJson = json_encode($pgnames);
?>

<!-- 
Online HTML, CSS and JavaScript editor to run code online.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="deleting.css" />
  <title>deleteing</title>
</head>
<body>
    <div id="change">
    
        <input type="text" id="username" placeholder="Username" name="username"><br><br>
        <input type="password" id="password" placeholder="Password" name="password"><br><br>
        <button type="button" onclick="fun1()">Login</button>
        
    </div>
    <script>
    document.title="PG delete"
        var username = "jaswanth9840";
        var password = "9100077859yj";
        var check_username = document.getElementById('username');
        var check_password = document.getElementById('password');

        function fun1() {
            if (username === check_username.value && password === check_password.value) {
                display();
                autofill();
            }
            else{
                alert('password and user name is wrong');
            }

        }
        function display(){
            var change=document.getElementById('change');
            change.innerHTML=` <form method="post">
 <div class="wrap">
      <div class="search">
         <input type="text" class="searchTerm" placeholder="What are you looking for?" id="search" name="delete">
         <div id="autofill-container">
          <ul id="autofill-list"></ul>
      </div>
    <button type="submit" name="submittodelete">Submit</button>

 </form>`;
        }

    </script>


 <script>
    function autofill() {
        var pgnames = <?php echo $pgnameJson; ?>;

        var nameInput = document.getElementById('search');
        var autofillList = document.getElementById('autofill-list');

        nameInput.addEventListener('input', function () {
            var inputValue = nameInput.value;
            autofillList.innerHTML = '';

            if (inputValue.length > 0) {
                var matchingNames = pgnames.filter(function (name) {
                    return name.toLowerCase().includes(inputValue.toLowerCase());
                });

                matchingNames.forEach(function (name) {
                    var li = document.createElement('li');
                    li.textContent = name;
                    li.addEventListener('click', function () {
                        nameInput.value = name;
                        autofillList.innerHTML = '';
                    });
                    autofillList.appendChild(li);
                });

                autofillList.style.display = 'block';
            } else {
                autofillList.style.display = 'none';
            }
        });

        // Hide autofill list when clicking outside the input box
        var search = document.getElementById("filterid");
        search.addEventListener('click', function (event) {
            if (event.target.id !== 'searchbutton') {
                var isClickInside = nameInput.contains(event.target) || autofillList.contains(event.target);
                if (!isClickInside) {
                    autofillList.style.display = 'none';
                    s();
                }
            }

        });
    }
    
 </script>
</body>

</html>
