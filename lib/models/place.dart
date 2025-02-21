import 'package:uuid/uuid.dart';

import 'dart:io';

const uuid = Uuid();

class PlaceLocation {
  const PlaceLocation({
    required this.lat,
    required this.lon,
    required this.address,
  });
  final double lat;
  final double lon;
  final String address;
}

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
    String? id
  }) : id = id ?? uuid.v4();//if id is null set to uuid

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}
