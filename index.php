<!DOCTYPE html>
<html>
<head lang="en">
    <title>Google Maps</title>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="google-map.css">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
</head>
<body>

<div id="map-canvas" style="float:left;width:70%;height:100%;"></div>
<div id="control_panel" style="float:right;width:30%;text-align:left;padding-top:20px">
    <div style="margin:20px;border-width:2px;">
        <b>Waypoints:</b> <br>
        <i>(Ctrl-Click for multiple selection)</i> <br>
        <select multiple id="waypoints" style="height: 200px;">
            <option value="R. João Batista Fabro">R. João Batista Fabro</option>
            <option value="Rua Rodrigo Maibon Moreira">Rua Rodrigo Maibon Moreira</option>
            <option value="Rua Itamar Orlando Soares">Rua Itamar Orlando Soares</option>
            <option value="Avenida São Paulo, Maringá">Avenida São Paulo</option>
            <option value="Avenida Colombo, Maringá">Avenida Colombo</option>
            <option value="Avenida Prudente de Morais, Maringá">Avenida Prudente de Morais</option>
            <option value="Avenida Cerro Azul, Maringá">Avenida Cerro Azul</option>
            <option value="Avenida Mandacarú, 1723">Avenida Mandacarú</option>
        </select>
        <br>
        <input type="submit" onclick="calcRoute(-23.426868, -51.9408231);">
    </div>
</div>

<script src="google-map.js"></script>
</body>
</html>