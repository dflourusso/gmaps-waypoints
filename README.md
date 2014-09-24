### Traçar Rotas com Google Maps => gmaps-waypoints


Google Maps com rotas exibindo múltiplos pontos


#### Instalação - Using Bower
    bower install dflourusso/gmaps-waypoints


#### Get Started

Inclua em seu index o plugin do google para o mapa

	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>

Inclua em seu index o **jquery**

	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	
Inclua em seu index o componente **gmaps-waypoints**

	<script src="bower_components/gmaps-waypoints/dist/gmaps-waypoints.js"></script>
	
#### Drawing the Map

##### 1 Inclua uma div contendo id="map-canvas"

	<div id="map-canvas"></div>
	
Obs: *É necessário que esta div esteja dentro de outro elemento com **height** e **width** especificados*

##### 2 Inclua um botão ou link que invoke a função <u>calcRoute</u>
A função espera como parâmetros a **latitude** atual, a **longitude** atual e um **array** contendo as coordenadas para traçar a rota. As posições do array de coordenadas podem ser o **nome da rua** ou um objeto contendo a **latitude e longitude**.

Exemplo:

	<button type="button" onclick="
				gm.calcRoute(
                							{latitude: -23.426868, longitude: -51.9308231},
                							[
						                   	'Rua Itamar Orlando Soares',
                    							{latitude: -23.428239, longitude: -51.9728931},
                    							'Av. Das Grevíleas',
                    							'Av. Pintassilgo'
                							],
                							{latitude: -23.426868, longitude: -51.9408231}
            						   );
            					">
                Exibir Rota
            </button>
     

#### Acesse este [link](http://jsbin.com/kijoju/2/edit) para um exemplo em funcionamento