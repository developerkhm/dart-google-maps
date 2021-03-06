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

part of google_maps.src;

@JsName('google.maps.Rectangle')
abstract class _Rectangle extends MVCObject {
  factory _Rectangle([RectangleOptions opts]) => null;

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds();
  bool get draggable => _getDraggable();
  bool _getDraggable();
  bool get editable => _getEditable();
  bool _getEditable();
  GMap get map => _getMap();
  GMap _getMap();
  bool get visible => _getVisible();
  bool _getVisible();
  set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds);
  set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable);
  set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable);
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  set options(RectangleOptions options) => _setOptions(options);
  void _setOptions(RectangleOptions options);
  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible);

  Stream get onBoundsChanged => getStream(this, 'bounds_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend =>
      getStream(this, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart =>
      getStream(this, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousemove =>
      getStream(this, 'mousemove', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => MouseEvent.created(o));
}
