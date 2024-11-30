import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_streetview.dart';
import 'package:web/web.dart';

late Map map;
late StreetViewPanorama panorama;

void main() async {
  final berkeley = LatLng(37.869085, -122.254775);
  final sv = StreetViewService();

  panorama = StreetViewPanorama(document.getElementById('pano') as HTMLElement);

  // Set up the map
  final mapOptions = MapOptions()
    ..center = berkeley
    ..zoom = 16
    ..streetViewControl = false;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  // Set the initial Street View camera to the center of the map
  final response = await sv.getPanorama(StreetViewLocationRequest()
    ..location = berkeley
    ..radius = 50);
  processSVData(response.data);

  // Look for a nearby Street View panorama when the map is clicked.
  // getPanorama will return the nearest pano when the
  // given radius is 50 meters or less.
  map.onClick.listen((e) async {
    final response = await sv.getPanorama(StreetViewLocationRequest()
      ..location = e.latLng
      ..radius = 50);
    processSVData(response.data);
  });
}

void processSVData(StreetViewPanoramaData data) {
  final marker = Marker(MarkerOptions()
    ..position = data.location!.latLng
    ..map = map
    ..title = data.location!.description);

  panorama.pano = data.location!.pano;
  panorama.pov = StreetViewPov()
    ..heading = 270
    ..pitch = 0;
  panorama.visible = true;

  marker.onClick.listen((e) {
    final markerPanoID = data.location!.pano;
    // Set the Pano to use the passed panoID
    panorama.pano = markerPanoID;
    panorama.pov = StreetViewPov()
      ..heading = 270
      ..pitch = 0;
    panorama.visible = true;
  });
}
