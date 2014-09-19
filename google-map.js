var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;

function initialize() {
    directionsDisplay = new google.maps.DirectionsRenderer();
    var maringa = new google.maps.LatLng(-23.426868, -51.9408231);
    var mapOptions = {
        zoom: 13,
        center: maringa
    };
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    directionsDisplay.setMap(map);
}

function calcRoute(currentLat, currentLong) {
    var waypts = [];
    var checkboxArray = document.getElementById('waypoints');
    for (var i = 0; i < checkboxArray.length; i++) {
        if (checkboxArray.options[i].selected == true) {
            console.log(checkboxArray[i].value);
            waypts.push({
                location:checkboxArray[i].value,
                stopover:true
            });
        }
    }
    console.log(waypts);

    var request = {
        origin: new google.maps.LatLng(currentLat, currentLong),
        destination: new google.maps.LatLng(-23.424239, -51.9398931),
        waypoints: waypts,
        optimizeWaypoints: true,
        travelMode: google.maps.TravelMode.DRIVING
    };
    directionsService.route(request, function(response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
        }
    });
}

google.maps.event.addDomListener(window, 'load', initialize);