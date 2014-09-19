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
        <b>Start:</b>
        <select id="start">
            <option value="Halifax, NS">Halifax, NS</option>
            <option value="Boston, MA">Boston, MA</option>
            <option value="New York, NY">New York, NY</option>
            <option value="Miami, FL">Miami, FL</option>
        </select>
        <br>
        <b>Waypoints:</b> <br>
        <i>(Ctrl-Click for multiple selection)</i> <br>
        <select multiple id="waypoints">
            <option value="montreal, quebec">Montreal, QBC</option>
            <option value="toronto, ont">Toronto, ONT</option>
            <option value="chicago, il">Chicago</option>
            <option value="winnipeg, mb">Winnipeg</option>
            <option value="fargo, nd">Fargo</option>
            <option value="calgary, ab">Calgary</option>
            <option value="spokane, wa">Spokane</option>
        </select>
        <br>
        <b>End:</b>
        <select id="end">
            <option value="Vancouver, BC">Vancouver, BC</option>
            <option value="Seattle, WA">Seattle, WA</option>
            <option value="San Francisco, CA">San Francisco, CA</option>
            <option value="Los Angeles, CA">Los Angeles, CA</option>
        </select>
        <br>
        <input type="submit" onclick="calcRoute();">
    </div>
    <div id="directions_panel" style="margin:20px;background-color:#FFEE77;"></div>
</div>

<script src="google-map.js"></script>
</body>
</html>