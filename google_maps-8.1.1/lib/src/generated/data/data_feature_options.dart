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

extension type DataFeatureOptions._(JSObject _) implements JSObject {
  external DataFeatureOptions({
    JSAny? /*(Data.Geometry|LatLng|LatLngLiteral)?*/ geometry,
    JSAny? /*(number|string)?*/ id,
    JSObject /*Object<null>*/ ? properties,
  });
  external JSAny? /*(Data.Geometry|LatLng|LatLngLiteral)?*/ geometry;
  external JSAny? /*(number|string)?*/ id;
  external JSObject /*Object<null>*/ ? properties;
}