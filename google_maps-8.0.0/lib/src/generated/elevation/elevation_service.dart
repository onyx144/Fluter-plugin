// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../elevation.dart';

@JS('google.maps.ElevationService')
extension type ElevationService._(JSObject _) implements JSObject {
  external ElevationService();
  @JS('getElevationAlongPath')
  external JSPromise<PathElevationResponse> _getElevationAlongPath(
    PathElevationRequest request,
  );
  Future<PathElevationResponse> getElevationAlongPath(
    PathElevationRequest request,
  ) =>
      _getElevationAlongPath(request).toDart;
  @JS('getElevationForLocations')
  external JSPromise<LocationElevationResponse> _getElevationForLocations(
    LocationElevationRequest request,
  );
  Future<LocationElevationResponse> getElevationForLocations(
    LocationElevationRequest request,
  ) =>
      _getElevationForLocations(request).toDart;
}
