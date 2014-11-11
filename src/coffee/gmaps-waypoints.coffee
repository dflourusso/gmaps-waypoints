class GmapsWaypoints
  constructor: (@element, options = {})->
    @directionsService = new google.maps.DirectionsService()
    @options =
      latitude: -23.424227
      longitude: -51.939256
      travelMode: 'DRIVING'
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
      waypts.push
        location: @prepareLocation locations[i]
        stopover: true
      i++
    request =
      origin: new google.maps.LatLng(origin.latitude, origin.longitude)
      destination: new google.maps.LatLng(destination.latitude, destination.longitude)
      waypoints: waypts
      optimizeWaypoints: true
      travelMode: @options.travelMode
    @directionsService.route request, (response, status) =>
      @directionsDisplay.setDirections response  if status is google.maps.DirectionsStatus.OK

  prepareLocation: (loc)->
    if typeof loc is 'string' then loc else ("#{loc.latitude}, #{loc.longitude}")
