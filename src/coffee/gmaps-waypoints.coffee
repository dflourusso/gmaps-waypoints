directionsDisplay = null
directionsService = new google.maps.DirectionsService()

initialize = ->
  element = document.getElementById('map-canvas')
  $mapCanvas = $(element)
  $mapCanvas.css('width', '100%')
  $mapCanvas.css('height', '100%')
  directionsDisplay = new google.maps.DirectionsRenderer()
  maringa = new google.maps.LatLng(-23.426868, -51.9408231)
  mapOptions =
    zoom: 13
    center: maringa

  map = new google.maps.Map(element, mapOptions)
  directionsDisplay.setMap map

calcRoute = (currentLat, currentLong, locations) ->
  waypts = []
  i = 0

  while i < locations.length
    unknowitem = locations[i]
    item = (if typeof unknowitem is 'string' then unknowitem else ("#{unknowitem.latitude}, #{unknowitem.longitude}"))
    waypts.push
      location: item
      stopover: true
    i++

  request =
    origin: new google.maps.LatLng(currentLat, currentLong)
    destination: new google.maps.LatLng(-23.424239, -51.9398931)
    waypoints: waypts
    optimizeWaypoints: true
    travelMode: google.maps.TravelMode.DRIVING

  directionsService.route request, (response, status) ->
    directionsDisplay.setDirections response  if status is google.maps.DirectionsStatus.OK

google.maps.event.addDomListener window, "load", initialize
