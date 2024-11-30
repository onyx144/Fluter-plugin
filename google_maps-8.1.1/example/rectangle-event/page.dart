import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Rectangle rectangle;
late Map map;
late InfoWindow infoWindow;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(44.5452, -78.5389)
    ..zoom = 9;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final bounds = LatLngBounds(LatLng(44.490, -78.649), LatLng(44.599, -78.443));

  // Define the rectangle and set its editable property to true.
  rectangle = Rectangle(RectangleOptions()
    ..bounds = bounds
    ..editable = true
    ..draggable = true)
    ..map = map;

  // Add an event listener on the rectangle.
  rectangle.onBoundsChanged.listen(showNewRect);

  // Define an info window on the map.
  infoWindow = InfoWindow();
}

void showNewRect(_) {
  final ne = rectangle.bounds!.northEast;
  final sw = rectangle.bounds!.southWest;

  final contentString = '<b>Rectangle moved.</b><br>'
      'New north-east corner: ${ne.lat}, ${ne.lng}<br>'
      'New south-west corner: ${sw.lat}, ${sw.lng}';

  // Set the info window's content and position.
  infoWindow.content = contentString.toJS;
  infoWindow.position = ne;

  infoWindow.open(map);
}
