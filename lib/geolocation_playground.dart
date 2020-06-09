import 'package:location/location.dart';
import 'dart:async';

Location location = new Location();
bool _serviceEnabled;
PermissionStatus _permissionGranted;
LocationData _locationData;

Future<void> _getLocation() async {
  _serviceEnabled = await location.serviceEnabled();
  print(_serviceEnabled);
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();

    if (!_serviceEnabled) {
      return;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return;
    }
  }
}

Future<void> _getLocationData() async {
  _locationData = await location.getLocation();
  print(_locationData);
}
