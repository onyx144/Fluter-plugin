import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late GroundOverlay historicalOverlay;
late Map map;

void main() {
  final newark = LatLng(40.740, -74.18);
  final imageBounds =
      LatLngBounds(LatLng(40.712216, -74.22655), LatLng(40.773941, -74.12544));

  final mapOptions = MapOptions()
    ..zoom = 13
    ..center = newark;

  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  historicalOverlay = GroundOverlay(
      'https://www.lib.utexas.edu/maps/historical/newark_nj_1922.jpg',
      imageBounds);

  addOverlay();

  document
      .getElementById('removeOverlay')!
      .onClick
      .listen((_) => removeOverlay());
  document.getElementById('addOverlay')!.onClick.listen((_) => addOverlay());
}

void addOverlay() {
  historicalOverlay.map = map;
}

void removeOverlay() => historicalOverlay.map = null;
