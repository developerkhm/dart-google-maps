// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

@anonymous
abstract class _CircleOptions implements JsInterface {
  external factory _CircleOptions();

  LatLng center;
  bool clickable;
  bool draggable;
  bool editable;
  String fillColor;
  num fillOpacity;
  GMap map;
  num radius;
  String strokeColor;
  num strokeOpacity;
  // StrokePosition strokePosition;
  int _strokePosition;
  StrokePosition get strokePosition =>
      strokePositionCodec.decode(_strokePosition);
  void set strokePosition(StrokePosition strokePosition) {
    _strokePosition = strokePositionCodec.encode(strokePosition);
  }
  num strokeWeight;
  bool visible;
  num zIndex;
}