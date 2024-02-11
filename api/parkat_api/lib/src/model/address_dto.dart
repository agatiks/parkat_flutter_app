//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address_dto.g.dart';

/// AddressDto
///
/// Properties:
/// * [result]
/// * [geoLat]
/// * [geoLon]
@BuiltValue()
abstract class AddressDto implements Built<AddressDto, AddressDtoBuilder> {
  @BuiltValueField(wireName: r'result')
  String? get result;

  @BuiltValueField(wireName: r'geo_lat')
  double? get geoLat;

  @BuiltValueField(wireName: r'geo_lon')
  double? get geoLon;

  AddressDto._();

  factory AddressDto([void updates(AddressDtoBuilder b)]) = _$AddressDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddressDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddressDto> get serializer => _$AddressDtoSerializer();
}

class _$AddressDtoSerializer implements PrimitiveSerializer<AddressDto> {
  @override
  final Iterable<Type> types = const [AddressDto, _$AddressDto];

  @override
  final String wireName = r'AddressDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddressDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(String),
      );
    }
    if (object.geoLat != null) {
      yield r'geo_lat';
      yield serializers.serialize(
        object.geoLat,
        specifiedType: const FullType(double),
      );
    }
    if (object.geoLon != null) {
      yield r'geo_lon';
      yield serializers.serialize(
        object.geoLon,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddressDto object, {
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
    required AddressDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        case r'geo_lat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.geoLat = valueDes;
          break;
        case r'geo_lon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.geoLon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddressDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressDtoBuilder();
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
