import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude, longitude;
  late LocationPermission permission;

  Future<void> getCurrentLocation() async {
    try {
      permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
       longitude=position.longitude;
       latitude=position.latitude;

      print(position);
    } catch (e) {
      print(e);
    }
  }
}
