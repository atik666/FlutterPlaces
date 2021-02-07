import 'package:flutter/material.dart';

const GOOGLE_API_KEY = 'AIzaSyAhZp1luQmLNZZzSvIA32uH_f0T8cq9BRE';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}
