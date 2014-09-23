// Generated by CoffeeScript 1.7.1
var calcRoute, directionsDisplay, directionsService, initialize;

directionsDisplay = null;

directionsService = new google.maps.DirectionsService();

initialize = function() {
  var map, mapOptions, maringa;
  $("head").append("<style type=\"text/css\"> #map-canvas { width: 100%; height: 100%; }</style>");
  directionsDisplay = new google.maps.DirectionsRenderer();
  maringa = new google.maps.LatLng(-23.426868, -51.9408231);
  mapOptions = {
    zoom: 13,
    center: maringa
  };
  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  return directionsDisplay.setMap(map);
};

calcRoute = function(currentLat, currentLong, locations) {
  var i, item, request, unknowitem, waypts;
  waypts = [];
  i = 0;
  while (i < locations.length) {
    unknowitem = locations[i];
    item = (typeof unknowitem === 'string' ? unknowitem : "" + unknowitem.latitude + ", " + unknowitem.longitude);
    waypts.push({
      location: item,
      stopover: true
    });
    i++;
  }
  request = {
    origin: new google.maps.LatLng(currentLat, currentLong),
    destination: new google.maps.LatLng(-23.424239, -51.9398931),
    waypoints: waypts,
    optimizeWaypoints: true,
    travelMode: google.maps.TravelMode.DRIVING
  };
  return directionsService.route(request, function(response, status) {
    if (status === google.maps.DirectionsStatus.OK) {
      return directionsDisplay.setDirections(response);
    }
  });
};

google.maps.event.addDomListener(window, "load", initialize);
