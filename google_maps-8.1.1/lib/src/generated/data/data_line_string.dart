// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../data.dart';

@JS('google.maps.Data.LineString')
extension type DataLineString._(DataGeometry _) implements DataGeometry {
  external DataLineString(
    JSArray<LatLngOrLatLngLiteral> elements,
  );
  @JS('getArray')
  external JSArray<LatLng> _getArray();
  JSArray<LatLng> get array => _getArray();
  external LatLng getAt(
    num n,
  );
  @JS('getLength')
  external num _getLength();
  num get length => _getLength();
}