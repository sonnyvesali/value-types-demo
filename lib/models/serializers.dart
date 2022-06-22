library Serializers;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:value_types/models/built_vehicle.dart';

part 'serializers.g.dart';

@SerializersFor(
  const [
    BuiltVehicle,
    VehicleType,
  ],
)
// so we get JSON like this when we serialize = ["key1", "value1", "key2", "value2"....];
// with this code:
//? final Seriazliers serialzers = _$serializers;
// but if you want the cherry on top do this:
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
