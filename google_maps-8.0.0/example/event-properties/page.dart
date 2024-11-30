import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final originalMapCenter = LatLng(-25.363882, 131.044922);
  final map = Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 4
      ..center = originalMapCenter,
  );

  final infowindow = InfoWindow(InfoWindowOptions()
    ..content = 'Change the zoom level'.toJS
    ..position = originalMapCenter)
    ..open(map);

  map.onZoomChanged.listen((_) {
    infowindow.content = 'Zoom: ${map.zoom}'.toJS;
  });
}
