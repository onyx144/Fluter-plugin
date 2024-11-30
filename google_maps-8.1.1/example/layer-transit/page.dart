import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final myLatlng = LatLng(51.501904, -0.115871);
  final mapOptions = MapOptions()
    ..zoom = 13
    ..center = myLatlng;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  TransitLayer().map = map;
}
