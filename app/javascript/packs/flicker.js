
var currentPage = 1;
var maxPages = -1;



function fetchPhotos(page) {
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=b09f623b71734a977d2c50b158afba07&tags=bikerace%2C+BoulderBikeTour&per_page=40&page="+page+"&format=json&nojsoncallback=1",
    "method": "GET",
    "headers": {}
  }
  
  document.getElementById("flickr").innerHTML=""
  $.ajax(settings).done(function (data) {
    maxPages = data.photos.pages;
  
  
  
        $.each( data.photos.photo, function( i, bike ) {
  
    var farmId = bike.farm;
    var serverId = bike.server;
    var id = bike.id;
    var secret = bike.secret;
  
  
  $("#flickr").append('<img src="https://farm' + farmId + '.staticflickr.com/' + serverId + '/' + id + '_' + secret + '.jpg"/>');
  
    });
  });
}// end of fetchPhotos function

function nextPage() {
  if (currentPage < maxPages){
    currentPage++;
    fetchPhotos(currentPage)
  }
}

function prevPage() {
  if (currentPage > 1){ 
    currentPage--;
    fetchPhotos(currentPage)
  }
}

function firstPage() {
  if (currentPage == 1){
    alert("This is the first page, click on 'next' button to view more photos")
  }
}

function lastPage() {
  if (currentPage == maxPages){
    alert("This is the last page, thanks for viewing.")
  }
}


document.getElementById("prev").addEventListener("click",prevPage)
document.getElementById("next").addEventListener("click",nextPage)
document.getElementById("prev").addEventListener("click",firstPage)
document.getElementById("next").addEventListener("click",lastPage)
fetchPhotos(currentPage)
