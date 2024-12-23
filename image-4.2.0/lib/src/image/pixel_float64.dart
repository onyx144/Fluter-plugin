import 'dart:typed_data';

import '../color/channel.dart';
import '../color/channel_iterator.dart';
import '../color/color.dart';
import '../color/format.dart';
import '../util/color_util.dart';
import 'image.dart';
import 'image_data_float64.dart';
import 'palette.dart';
import 'pixel.dart';

class PixelFloat64 extends Iterable<num> implements Pixel {
  int _x;
  int _y;
  int _index;
  @override
  final ImageDataFloat64 image;

  PixelFloat64.imageData(this.image)
      : _x = -1,
        _y = 0,
        _index = -image.numChannels;

  PixelFloat64.image(Image image)
      : _x = -1,
        _y = 0,
        _index = -image.numChannels,
        image = image.data is ImageDataFloat64
            ? image.data as ImageDataFloat64
            : ImageDataFloat64(0, 0, 0);

  PixelFloat64.from(PixelFloat64 other)
      : _x = other._x,
        _y = other._y,
        _index = other._index,
        image = other.image;

  @override
  PixelFloat64 clone() => PixelFloat64.from(this);

  @override
  int get length => image.numChannels;
  int get numChannels => image.numChannels;
  @override
  bool get hasPalette => image.hasPalette;
  @override
  Palette? get palette => null;
  @override
  int get width => image.width;
  @override
  int get height => image.height;
  Float64List get data => image.data;
  @override
  num get maxChannelValue => image.maxChannelValue;
  @override
  num get maxIndexValue => image.maxIndexValue;
  @override
  Format get format => Format.float64;
  @override
  bool get isLdrFormat => image.isLdrFormat;
  @override
  bool get isHdrFormat => image.isHdrFormat;

  @override
  bool get isValid =>
      x >= 0 && x < (image.width - 1) && y >= 0 && y < (image.height - 1);

  @override
  int get x => _x;
  @override
  int get y => _y;

  /// The normalized x coordinate of the pixel, in the range \[0, 1\].
  @override
  num get xNormalized => width > 1 ? _x / (width - 1) : 0;

  /// The normalized y coordinate of the pixel, in the range \[0, 1\].
  @override
  num get yNormalized => height > 1 ? _y / (height - 1) : 0;

  /// Set the normalized coordinates of the pixel, in the range \[0, 1\].
  @override
  void setPositionNormalized(num x, num y) =>
      setPosition((x * (width - 1)).floor(), (y * (height - 1)).floor());

  @override
  void setPosition(int x, int y) {
    _x = x;
    _y = y;
    _index = _y * image.width * image.numChannels + (_x * image.numChannels);
  }

  @override
  Pixel get current => this;

  @override
  bool moveNext() {
    _x++;
    if (_x == width) {
      _x = 0;
      _y++;
      if (_y == height) {
        return false;
      }
    }
    _index += numChannels;
    return _index < image.data.length;
  }

  @override
  num operator [](int i) => i < numChannels ? data[_index + i] : 0;

  @override
  void operator []=(int i, num value) {
    if (i < numChannels) {
      data[_index + i] = value.toDouble();
    }
  }

  @override
  num get index => r;
  @override
  set index(num i) => r = i;

  @override
  num get r => numChannels > 0 ? data[_index] : 0;

  @override
  set r(num r) {
    if (numChannels > 0) {
      data[_index] = r.toDouble();
    }
  }

  @override
  num get g => numChannels > 1 ? data[_index + 1] : 0;

  @override
  set g(num g) {
    if (numChannels > 1) data[_index + 1] = g.toDouble();
  }

  @override
  num get b => numChannels > 2 ? data[_index + 2] : 0;

  @override
  set b(num b) {
    if (numChannels > 2) data[_index + 2] = b.toDouble();
  }

  @override
  num get a => numChannels > 3 ? data[_index + 3] : 0;

  @override
  set a(num a) {
    if (numChannels > 3) data[_index + 3] = a.toDouble();
  }

  @override
  num get rNormalized => r / maxChannelValue;
  @override
  set rNormalized(num v) => r = v * maxChannelValue;

  @override
  num get gNormalized => g / maxChannelValue;
  @override
  set gNormalized(num v) => g = v * maxChannelValue;

  @override
  num get bNormalized => b / maxChannelValue;
  @override
  set bNormalized(num v) => b = v * maxChannelValue;

  @override
  num get aNormalized => a / maxChannelValue;
  @override
  set aNormalized(num v) => a = v * maxChannelValue;

  @override
  num get luminance => getLuminance(this);
  @override
  num get luminanceNormalized => getLuminanceNormalized(this);

  @override
  num getChannel(Channel channel) => channel == Channel.luminance
      ? luminance
      : channel.index < numChannels
          ? data[_index + channel.index]
          : 0;

  @override
  num getChannelNormalized(Channel channel) =>
      getChannel(channel) / maxChannelValue;

  @override
  void set(Color c) {
    r = c.r;
    g = c.g;
    b = c.b;
    a = c.a;
  }

  @override
  void setRgb(num r, num g, num b) {
    data[_index] = r.toDouble();
    if (numChannels > 1) {
      data[_index + 1] = g.toDouble();
      if (numChannels > 2) {
        data[_index + 2] = b.toDouble();
      }
    }
  }

  @override
  void setRgba(num r, num g, num b, num a) {
    data[_index] = r.toDouble();
    if (numChannels > 1) {
      data[_index + 1] = g.toDouble();
      if (numChannels > 2) {
        data[_index + 2] = b.toDouble();
        if (numChannels > 3) {
          data[_index + 3] = a.toDouble();
        }
      }
    }
  }

  @override
  ChannelIterator get iterator => ChannelIterator(this);

  @override
  bool operator ==(Object other) {
    if (other is PixelFloat64) {
      return hashCode == other.hashCode;
    }
    if (other is List<int>) {
      if (other.length != numChannels) {
        return false;
      }
      if (data[_index] != other[0]) {
        return false;
      }
      if (numChannels > 1) {
        if (data[_index + 1] != other[1]) {
          return false;
        }
        if (numChannels > 2) {
          if (data[_index + 2] != other[2]) {
            return false;
          }
          if (numChannels > 3) {
            if (data[_index + 3] != other[3]) {
              return false;
            }
          }
        }
      }
      return true;
    }
    return false;
  }

  @override
  int get hashCode => Object.hashAll(toList());

  @override
  Color convert({Format? format, int? numChannels, num? alpha}) =>
      convertColor(this,
          format: format, numChannels: numChannels, alpha: alpha);
}
