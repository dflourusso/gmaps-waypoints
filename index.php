<!DOCTYPE html>
<html>
<head lang="en">
    <title>Google Maps</title>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="google-maps-routes.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
</head>
<body>

<div id="map-canvas" style="float:left;width:70%;height:100%;"></div>
<div id="control_panel" style="float:right;width:30%;text-align:left;padding-top:20px; padding-left: 20px;">
    <button class="btn btn-primary" type="button"
            onclick="calcRoute(
                -23.426868,
                -51.9408231,
                [
                    'Rua Itamar Orlando Soares',
                    {latitude: -23.428239, longitude: -51.9728931},
                    'Av. Das Grevíleas',
                    'Av. Pintassilgo'
                ]
            );
            ">
        Desenhar Rota
    </button>
</div>

<script src="google-maps-routes.js"></script>
</body>
</html>