// Company location coordinates
const companyLatitude = 37.7749;
const companyLongitude = -122.4194;

// Initialize the map
var map = L.map('map').setView([companyLatitude, companyLongitude], 13);

// Set up the OpenStreetMap layer
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

// Add a marker for the company location
L.marker([companyLatitude, companyLongitude]).addTo(map)
    .bindPopup('<b>TechThreads Headquarters</b><br>San Francisco, CA.')
    .openPopup();


    document.querySelector('.map-yes').addEventListener('click', function() {
        window.open('https://maps.app.goo.gl/xUvYQhZ1sPPJywX36', '_blank');
    });