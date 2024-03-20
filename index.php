<!DOCTYPE html>
<?php
include 'connect.php';
include 'collectingdata.php';
$pgnameJson = json_encode($pgnames);
$title="nearbypg's"
?>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PG's Near By</title>
  <link rel="stylesheet" href="home2.css" />
    <link rel="stylesheet" href="searchbar1.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
  <style>
    /* Reset */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      padding: 1.5rem;
    }

    .grid-container {
      display: grid;
      gap: 1rem;
    }

    .header {
      display: flex;
      align-items: center;
      justify-content:center;
     
    }

    .filters {
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 1rem;
    }

    .filter label {
      font-weight: bold;
    }

    .search input {
      flex: 1;
      height: 2.5rem;
      border-radius: 0.375rem;
      border: 1px solid #ccc;
      padding: 0.5rem;
      
    }
    .search{
        padding-bottom:20px;
        position:relative;
        top:50%;
        left:50%;
        transform:translate(-50%, -50%);;
    }

    .card {
      display: grid;
      gap: 1rem;
    }

    .card-item {
      display: grid;
      grid-template-columns: auto 1fr;
      gap: 1rem;
      border: 1px solid #ccc;
      border-radius: 0.5rem;
      padding: 1rem;
    }

    .card-item img {
      max-width: 100%;
      width:350px;
      height:263px;
      border-radius: 0.5rem;
    }

    .card-details {
      display: flex;
      flex-direction: column; /* Ensure card details are stacked */
    }

    .card-details h3 {
      margin: 0;
    }

    .card-details p {
      margin-top: 0.5rem;
      color: #666;
    }

    .card-content {
      display: grid;
      gap: 0.5rem; /* Adjust as needed */
    }

    .card-content > div {
      display: grid;
      gap: 0.05rem; /* Adjust as needed */
    }

    .font-semibold {
      font-weight: 600;
    }

    .button {
      padding: 0.5rem 1rem;
      background-color: #4b5563;
      color: #fff;
      border: none;
      border-radius: 0.375rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .button:hover {
      background-color: #6b7280;
    }

    .button:focus {
      outline: none;
      box-shadow: 0 0 0 2px #fff, 0 0 0 4px #9ca3af;
    }
.foricon{
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 1000; /* Adjust as needed */
  background-color: #fff; /* Adjust background color as needed */
  /* Add any other styles you want for the navigation bar */
}


    @media screen and (max-width: 768px) {
      .card-item {
        grid-template-columns: 1fr; /* Change to one column layout */
      }

      .card-item img {
        border-radius: 0.5rem; /* Reset border radius */
        order: -1; /* Move the image to the top */
        width: 100%; /* Set image width to full */
      }

      .card-details {
        align-items: center; /* Center card details on mobile */
      }
    }
    #heading{
        display:flex;
        align-items:centre;
        justify-content:centre;
    }

    .checkboxtoggler {
      width: 3em;
      display: flex;
      flex-direction: column;
      gap: 0.7em;
      cursor: pointer;
    }

    .line-1, .line-2, .line-3 {
      background: #df6447;
      height: 0.3em;
      border-radius: 10em;
      transition-duration: 500ms;
    }

    #toggleChecker {
      height: 1.5em;
      width: 100%;
      display: none;
    }

    #toggleChecker:checked + #togglerLable .line-1 {
      transform: rotate(45deg) translateY(0.7em) translateX(0.7em);
    }

    #toggleChecker:checked + #togglerLable .line-2 {
      transform: rotate(-45deg) translateY(0em) translateX(0.1em);
    }

    #toggleChecker:checked + #togglerLable .line-3 {
      transform: scaleX(0);
      transform-origin: left;
    }

 </style>
 <style>
 .dropdown-item {
  padding: 0.8rem 1rem;
  cursor: pointer;
  color: #333;
  font-size: 16px;
  transition: background-color 0.3s ease, color 0.3s ease;
  
}

.dropdown-item:hover {
  background-color: #f8f9fa;
  color: #555;
}

     
 </style>
<style>
    /* Integrate the .container1 styles */
.flex-container .search-bar {
    background: lightgrey;
    padding: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 7px 7px 0 0;
    width: 100%;
}

.flex-container .search-bar.active {
    border-bottom: 2px solid #7158e2;
}

.flex-container .search-bar input {
    font-size: 18px;
    border: none;
    outline: none;
    border-radius: 7px 7px 0 0;
    padding: 5px;
    width: 100%;
}

.flex-container .search-bar i {
    color: #7158e2;
    font-size: 25px;
}

.flex-container .dropdown-menu {
    padding: 10px;
    background: white;
    border-radius: 0 0 7px 7px;
    max-height: 200px;
    overflow-y: auto;
    display: none;
}

.flex-container .dropdown-menu button {
    background-color: transparent;
    border: 2px solid lightgrey;
    cursor: pointer;
    padding: 10px;
    border-radius: 25px;
    height: 2.5rem;
    border-radius: 0.375rem;
    border: 1px solid #E2E8F0;
    background-color: #F7FAFC;
    padding: 0.75rem;
    font-size: 0.875rem;
    outline: none;
}

</style>
</head>
<body>
<div class="foricon">
  <div class="navigation">
    <ul>
      <li class="list active">
        <a href="#">
          <span class="icon">
            <img src="images/hotel.gif" id="try" class="try1" onmouseover="fun1()" onmouseout="fun2()">
          </span>
          <span class="text">Pg's</span>
        </a>
      </li>
      <li class="list">
        <a href="/hotels/try2.html">
          <span class="icon">
            <img src="images/burger.gif" id="burger" class="try1"  onmouseover="burger1()" onmouseout="burger2()">
          </span>
          <span class="text">restaurants</span>
        </a>
      </li>
      <li class="list">
        <a href="/rentedbikes/rentedbikes.php">
          <span class="icon">
            <img src="images/helmet (1).gif" id="bike" class="try1" onmouseover="bike1()" onmouseout="bike2()">
          </span>
          <span class="text">BIKES</span>
        </a>
      </li>
      <li class="list">
        <a href="#">
          <span class="icon">
            <img src="images/taxi.gif" id="bike" class="try1" onmouseover="bike1()" onmouseout="bike2()">
          </span>
          <span class="text">message</span>
        </a>
      </li>
      <li class="list">
        <a href="#">
          <span class="icon">
            <ion-icon name="planet-outline"></ion-icon>
          </span>
          <span class="text">photos</span>
        </a>
      </li>
      <div class="indicator"></div>
    </ul>
  </div>
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</div>
<br><br><br><br><br><br><br>
<script src="newui1.js"></script>
<section class="container">
  <div class="grid-container">
    <div class="header">
      <h1 class="mint">Near by PG's</h1>
    </div>

     
      </div>
    </div>
   <div class="wrapper">
      <div class="search-input">
        <a href="" target="_blank" hidden></a>
        <input type="text" placeholder="What are you looking for...." id="search-icon1">
        <div class="autocom-box">
          <!-- here list are inserted from javascript -->
        </div>
        <div class="icon"><img  id='search-icon' src="images/search.png"></div>
      </div>
    </div>

  <br>

    
    <div class="card" id="card-id">
      <!-- PHP loop to dynamically generate card items based on database values -->
      <?php
      $sql = "SELECT * FROM pgdata GROUP BY pgname";
      $result = $mysqli->query($sql);
      while ($row = $result->fetch_assoc()) {
          $pgname = $row['pgname'];
          $rent = $row['rent'];
          $advance = $row['advance'];
          $rooms = $row['rooms'];
          $electricity = $row['electricity'];
          $contactno = $row['contactno'];
          $share = $row['share'];
          $gender = $row['gender'];
          $distance = $row['distance'];
          $rent2 = $row['rent2'];
          $rent3 = $row['rent3'];
          ?>
          <div class="card-item">
            <!-- Your dynamic content goes here -->
            <!-- Example: -->
            <img src="pgimage/<?php echo strtolower($pgname); ?>.jpg" alt="<?php echo $pgname; ?>" class="pgimage">
            <div class="card-details" id='<?php echo $pgname; ?>'>
              <h3><?php echo $pgname; ?></h3>
              <p><?php echo $distance; ?> km from Manipal University</p>
              <div class="card-content grid gap-2">
                <div class="grid gap-1.5">
                  <h3 class="font-semibold">Single Occupancy</h3>
                  <?php if ($rent == 0): ?>
                      <p>Not available</p>
                  <?php else: ?>
                      <p><?php echo $rent; ?> per year</p>
                  <?php endif; ?>
                </div>
                <div class="grid gap-1.5">
                  <h3 class="font-semibold">Double Occupancy</h3>
                  <?php if ($rent2 == 0): ?>
                      <p>Not available</p>
                  <?php else: ?>
                      <p><?php echo $rent2; ?> per year</p>
                  <?php endif; ?>
                </div>
                <div class="grid gap-1.5">
                  <h3 class="font-semibold">Triple Occupancy</h3>
                  <?php if ($rent3 == 0): ?>
                      <p>Not available</p>
                  <?php else: ?>
                      <p><?php echo $rent3; ?> per year</p>
                  <?php endif; ?>
                </div>
                <!-- Add more dynamic content here -->
                <div class="flex justify-between">
                  <button class="button View">View</button>
                  <button class="button Book">Book</button>
                </div>
              </div>
            </div>
          </div>
          <?php
      }
      ?>
    </div>
  </div>
</section>
<script>
    var image=document.getElementById('try');
    var burger=document.getElementById('burger');
    var bike=document.getElementById('bike');

    function fun1(){
      image.src="images/hotel-sign.gif";
    }
    function fun2(){
      image.src='images/hotel.gif'
    }
    function burger1(){
      burger.src='images/food-delivery (1) (2).gif';
    }
    function burger2(){
      burger.src='images/burger.gif';
    }
    function bike1(){
      bike.src='images/bike.gif';
    }
    function bike2(){
      bike.src="images/helmet (1).gif";
    }
</script>
<script>
 var toggleChecker = document.getElementById('toggleChecker');
var dropdownList = document.querySelector('.dropdown-list');
dropdownList.style.display='none';

toggleChecker.addEventListener('click', function() {
    if (dropdownList.style.display === 'block') {
        dropdownList.style.display = 'none'; // Show dropdown list
    } else {
        dropdownList.style.display = 'block'; // Hide dropdown list
    }
});

    
</script>
<script> var names=<?php echo $pgnameJson; ?>; </script>
<script>
    let suggestions = names;
// getting all required elements
const searchWrapper = document.querySelector(".search-input");
const inputBox = searchWrapper.querySelector("input");
const suggBox = searchWrapper.querySelector(".autocom-box");
const icon = searchWrapper.querySelector(".icon");
let linkTag = searchWrapper.querySelector("a");
let webLink;

// if user press any key and release
inputBox.onkeyup = (e)=>{
    let userData = e.target.value; //user enetered data
    let emptyArray = [];
    if(userData){
        icon.onclick = ()=>{
            console.log('jaswanth');
           
        }
        emptyArray = suggestions.filter((data)=>{
            //filtering array value and user characters to lowercase and return only those words which are start with user enetered chars
            return data.toLocaleLowerCase().startsWith(userData.toLocaleLowerCase());
        });
        emptyArray = emptyArray.map((data)=>{
            // passing return data inside li tag
            return data = `<li>${data}</li>`;
        });
        searchWrapper.classList.add("active"); //show autocomplete box
        showSuggestions(emptyArray);
        let allList = suggBox.querySelectorAll("li");
        for (let i = 0; i < allList.length; i++) {
            //adding onclick attribute in all li tag
            allList[i].setAttribute("onclick", "select(this)");
        }
    }else{
        searchWrapper.classList.remove("active"); //hide autocomplete box
    }
}

function select(element){
    let selectData = element.textContent;
    inputBox.value = selectData;
  
    searchWrapper.classList.remove("active");
}

function showSuggestions(list){
    let listData;
    if(!list.length){
        userValue = inputBox.value;
        listData = `<li>${userValue}</li>`;
    }else{
      listData = list.join('');
    }
    suggBox.innerHTML = listData;
}
  

</script>
</body>
</html>
