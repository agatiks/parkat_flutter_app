//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:parkat_api/src/model/parking_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parking_group_dto.g.dart';

/// ParkingGroupDto
///
/// Properties:
/// * [name]
/// * [externalId]
/// * [id]
/// * [enabled]
/// * [longitude]
/// * [latitude]
/// * [parkingPlaces]
@BuiltValue()
abstract class ParkingGroupDto
    implements Built<ParkingGroupDto, ParkingGroupDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  @BuiltValueField(wireName: r'parkingPlaces')
  BuiltList<ParkingDto>? get parkingPlaces;

  ParkingGroupDto._();

  factory ParkingGroupDto([void updates(ParkingGroupDtoBuilder b)]) =
      _$ParkingGroupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParkingGroupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParkingGroupDto> get serializer =>
      _$ParkingGroupDtoSerializer();
}

class _$ParkingGroupDtoSerializer
    implements PrimitiveSerializer<ParkingGroupDto> {
  @override
  final Iterable<Type> types = const [ParkingGroupDto, _$ParkingGroupDto];

  @override
  final String wireName = r'ParkingGroupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParkingGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.parkingPlaces != null) {
      yield r'parkingPlaces';
      yield serializers.serialize(
        object.parkingPlaces,
        specifiedType: const FullType(BuiltList, [FullType(ParkingDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParkingGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParkingGroupDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.longitude = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.latitude = valueDes;
          break;
        case r'parkingPlaces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ParkingDto)]),
          ) as BuiltList<ParkingDto>;
          result.parkingPlaces.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParkingGroupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParkingGroupDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
