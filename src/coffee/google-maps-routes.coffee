directionsDisplay = null
directionsService = new google.maps.DirectionsService()

initialize = ->
  directionsDisplay = new google.maps.DirectionsRenderer()
  maringa = new google.maps.LatLng(-23.426868, -51.9408231)
  mapOptions =
    zoom: 13
    center: maringa

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)
  directionsDisplay.setMap map
  @

calcRoute = (currentLat, currentLong) ->
  waypts = []
  checkboxArray = document.getElementById("waypoints")
  i = 0

  while i < checkboxArray.length
    if checkboxArray.options[i].selected is true
      console.log checkboxArray[i].value
      waypts.push
        location: checkboxArray[i].value
        stopover: true
    i++
  console.log waypts

  request =
    origin: new google.maps.LatLng(currentLat, currentLong)
    destination: new google.maps.LatLng(-23.424239, -51.9398931)
    waypoints: waypts
    optimizeWaypoints: true
    travelMode: google.maps.TravelMode.DRIVING

  directionsService.route request, (response, status) ->
    directionsDisplay.setDirections response  if status is google.maps.DirectionsStatus.OK

google.maps.event.addDomListener window, "load", initialize