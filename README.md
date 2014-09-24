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
     
##### 3 Adicione o javascript abaixo passando os parâmetros desejados para instanciar a classe

Ao instanciar a classe **GmapsWaypoints** é necessário que se passe dois parâmetros, um contendo o **objeto** onde o mapa será desenhado e outro com as **opções de configuração** para o mapa.

Opções disponíveis:

* latitude: *Latitude utilizada para centralizar o mapa em sua primeira exibição*
* longitude: *Longitude utilizada para centralizar o mapa em sua primeira exibição*
* zoom: *Zoom utilizado para a exibição inicial do mapa*
* travelMode: *Utilizado para indicar o modo como se irá percorrer a rota. [Detalhes](https://developers.google.com/maps/documentation/javascript/directions?hl=pt-br#TravelModes)*

Exemplo:
	
	<script type="text/javascript">
    		var gm = new GmapsWaypoints(document.getElementById('map-canvas'), {latitude: -23.426868, longitude: -51.9308231, zoom: 13, travelMode: 'DRIVING'});
    		google.maps.event.addDomListener(window, "load", gm.initialize);
	</script>

##### Acesse este [link](http://jsbin.com/pucon/1/edit) para um exemplo em funcionamento