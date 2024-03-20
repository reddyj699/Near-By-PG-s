document.addEventListener('DOMContentLoaded', function() {
  const cardContainer = document.getElementById('card-id');

  // Event listener for opening HTML files
  cardContainer.addEventListener('click', function(event) {
    if (event.target.classList.contains('View')) {
      const cardItem = event.target.closest('.card-item');
      const nameElement = cardItem.querySelector('h3');
      if (nameElement !== null) {
        const name = nameElement.textContent;
        localStorage.setItem('pgName', name); // Store pgName in localStorage
        window.location.href = 'pgwebsite/new4.html';
      } else {
        console.log('Name element not found!');
      }
    } else if (event.target.classList.contains('Book')) {
      const cardItem = event.target.closest('.card-item');
      const nameElement = cardItem.querySelector('h3');
      if (nameElement !== null) {
        const name = nameElement.textContent;
        localStorage.setItem('pgName', name); // Store pgName in localStorage
        window.location.href = 'form/form.html';
      } else {
        console.log('Name element not found!');
      }
    }
  });

  // Search function
  function s() {
    var search = document.getElementById('search-icon1').value;
    var container = document.getElementById('card-id');

    if (search) {
      var cardItems = container.querySelectorAll('.card-item');
      cardItems.forEach(function(cardItem) {
        var nameElement = cardItem.querySelector('h3');
        if (nameElement && nameElement.textContent === search) {
          container.insertBefore(cardItem, container.firstChild);
        }
      });
    }
  }

  var searchIcon = document.getElementById('search-icon');
  searchIcon.addEventListener('click', function() {
    s();
  });
});
