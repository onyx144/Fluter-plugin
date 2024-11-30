import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final myLatlng = LatLng(-25.363882, 131.044922);
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = myLatlng;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  const contentString = '<div id="content">'
      '<div id="siteNotice">'
      '</div>'
      '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'
      '<div id="bodyContent">'
      '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large '
      'sandstone rock formation in the southern part of the '
      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '
      'south west of the nearest large town, Alice Springs; 450&#160;km '
      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '
      'features of the Uluru - Kata Tjuta National Park. Uluru is '
      'sacred to the Pitjantjatjara and Yankunytjatjara, the '
      'Aboriginal people of the area. It has many springs, waterholes, '
      'rock caves and ancient paintings. Uluru is listed as a World '
      'Heritage Site.</p>'
      '<p>Attribution: Uluru, <a href="http://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'
      'http://en.wikipedia.org/w/index.php?title=Uluru</a> '
      '(last visited June 22, 2009).</p>'
      '</div>'
      '</div>';

  final infowindow = InfoWindow(InfoWindowOptions()
    ..content = contentString.toJS
    ..maxWidth = 200);

  final marker = Marker(MarkerOptions()
    ..position = myLatlng
    ..map = map
    ..title = 'Uluru (Ayers Rock)');
  marker.onClick.listen((e) {
    infowindow.open(map, marker);
  });
}
