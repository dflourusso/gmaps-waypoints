class GmapsWaypoints
  constructor: (@element, options = {})->
    @directionsService = new google.maps.DirectionsService()
    @options =
      latitude: -23.426868
      longitude: -51.9408231
      zoom: 13
    for k of options
      @options[k] = options[k]

  initialize: =>
    @injectCssForMap()
    @directionsDisplay = new google.maps.DirectionsRenderer()
    centerMapLatLng = new google.maps.LatLng(@options.latitude, @options.longitude)
    mapOptions =
      zoom: @options.zoom
      center: centerMapLatLng
    map = new google.maps.Map(@element, mapOptions)
    @directionsDisplay.setMap map

  injectCssForMap: ->
    $(@element).css('width', '100%').css('height', '100%')

  calcRoute: (origin, locations, destination) =>
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
      origin: new google.maps.LatLng(origin.latitude, origin.longitude)
      destination: new google.maps.LatLng(destination.latitude, destination.longitude)
      waypoints: waypts
      optimizeWaypoints: true
      travelMode: google.maps.TravelMode.DRIVING
    @directionsService.route request, (response, status) =>
      @directionsDisplay.setDirections response  if status is google.maps.DirectionsStatus.OK
