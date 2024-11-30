import 'dart:async';
import 'package:google_maps/google_maps.dart' hide Duration;
import 'package:web/web.dart' hide Animation;

final berlin = LatLng(52.520816, 13.410186);
final List<LatLng> neighborhoods = [
  LatLng(52.511467, 13.447179),
  LatLng(52.549061, 13.422975),
  LatLng(52.497622, 13.396110),
  LatLng(52.517683, 13.394393)
];

final markers = <Marker>[];

late Map map;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = berlin;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  document.getElementById('drop')!.onClick.listen(drop);
}

void drop(_) {
  clearMarkers();
  for (var i = 0; i < neighborhoods.length; i++) {
    Timer(Duration(milliseconds: i * 200), () {
      addMarker(neighborhoods[i]);
    });
  }
}

void addMarker(LatLng position) {
  markers.add(Marker(MarkerOptions()
    ..position = position
    ..map = map
    ..animation = Animation.DROP));
}

void clearMarkers() {
  for (var i = 0; i < markers.length; i++) {
    markers[i].map = null;
  }
  markers.clear();
}
