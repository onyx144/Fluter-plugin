import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late USGSOverlay overlay;

void main() {
  final map = Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 11
      ..center = LatLng(62.323907, -150.109291)
      ..mapTypeId = MapTypeId.SATELLITE,
  );

  final bounds = LatLngBounds(
    LatLng(62.281819, -150.287132),
    LatLng(62.400471, -150.005608),
  );

  // The photograph is courtesy of the U.S. Geological Survey.
  const srcImage =
      'https://developers.google.com/maps/documentation/javascript/examples/full/images/talkeetna.png';

  // The custom USGSOverlay object contains the USGS image,
  // the bounds of the image, and a reference to the map.
  overlay = USGSOverlay(bounds, srcImage, map);
}

class USGSOverlay {
  USGSOverlay(this._bounds, this._image, Map map) {
    overlayView
      ..onAdd = _onAdd
      ..draw = _draw
      ..onRemove = _onRemove

      // Explicitly call setMap on this overlay
      ..map = map;
  }

  final overlayView = OverlayView();

  final LatLngBounds _bounds;
  final String _image;
  HTMLDivElement? _div;

  /// onAdd is called when the map's panes are ready and the overlay has been
  /// added to the map.
  void _onAdd() {
    final div = document.createElement('div') as HTMLDivElement;
    div.style
      ..border = 'none'
      ..borderWidth = '0px'
      ..position = 'absolute';

    // Create the img element and attach it to the div.
    final img = (document.createElement('image') as HTMLImageElement)
      ..src = _image;
    img.style
      ..width = '100%'
      ..height = '100%'
      ..position = 'absolute';
    div.appendChild(img);

    _div = div;

    // Add the element to the "overlayLayer" pane.
    overlayView.panes!.overlayLayer.appendChild(div);
  }

  void _draw() {
    // We use the south-west and north-east
    // coordinates of the overlay to peg it to the correct position and size.
    // To do this, we need to retrieve the projection from the overlay.
    final overlayProjection = overlayView.projection;

    // Retrieve the south-west and north-east coordinates of this overlay
    // in LatLngs and convert them to pixel coordinates.
    // We'll use these coordinates to resize the div.
    final sw = overlayProjection.fromLatLngToDivPixel(_bounds.southWest)!;
    final ne = overlayProjection.fromLatLngToDivPixel(_bounds.northEast)!;

    // Resize the image's div to fit the indicated dimensions.
    final div = _div!;
    div.style
      ..left = '${sw.x}px'
      ..top = '${ne.y}px'
      ..width = '${ne.x - sw.x}px'
      ..height = '${sw.y - ne.y}px';
  }

  /// The onRemove() method will be called automatically from the API if
  /// we ever set the overlay's map property to 'null'.
  void _onRemove() {
    _div!.remove();
    _div = null;
  }
}
