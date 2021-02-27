var ridermap = L.map('map').setView([40.015, -105.2705], 11);

var riders = [
    ["Dustin Green", 40.00, -105.35],
    ["Jason Finn", 39.95, -105.24],
    ["Howard Thompson", 40.06, -105.26],
    ["Maggie Lantz", 40.03, -105.23],
    ["Lawrence Duran", 40.04, -105.23],
    ["Irene Molina", 39.96, -105.22],
    ["Nancy Garner", 39.98, -105.21],
    ["Tara Taylor", 40.00, -105.25],
    ["Alejandro Smith", 40.02, -105.26],
    ["Tricia Renshaw", 40.02, -105.30],
    ["Travis Cook", 40.01, -105.20],
    ["Joan Brooks", 39.98, -105.24],
    ["Joseph Rodgers", 39.99, -105.25],
    ["Matthew Gregson", 40.01,  -105.29],
    ["Katie Dunlap", 39.97, -105.27],
    ["Leo Howard", 39.97, -105.33],
    ["Maria Baisden", 40.00, -105.29],
    ["Sandy Townsend", 40.05, -105.30],
    ["Melinda Stephenson", 39.99,  -105.31],
    ["Jason Nichols", 40.01, -105.32]
    ];
    


L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 20,
    id: 'mapbox/streets-v11',
    tileSize: 512,
    zoomOffset: -1,
    accessToken: 'pk.eyJ1IjoiamFlbW9uIiwiYSI6ImNramluaWZ2NDNwcXQzNG10emc1eWVsMGQifQ._aQEbqYeOVKTHDJG7bPOfQ'
}).addTo(ridermap);



for (var i = 0; i < riders.length; i++) {
     L.marker([riders[i][1],riders[i][2]]).bindPopup(riders[i][0]).addTo(ridermap);
}
