//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parking_dto.g.dart';

/// ParkingDto
///
/// Properties:
/// * [name]
/// * [id]
/// * [occupied]
/// * [enabled]
@BuiltValue()
abstract class ParkingDto implements Built<ParkingDto, ParkingDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'occupied')
  bool? get occupied;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  ParkingDto._();

  factory ParkingDto([void updates(ParkingDtoBuilder b)]) = _$ParkingDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParkingDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParkingDto> get serializer => _$ParkingDtoSerializer();
}

class _$ParkingDtoSerializer implements PrimitiveSerializer<ParkingDto> {
  @override
  final Iterable<Type> types = const [ParkingDto, _$ParkingDto];

  @override
  final String wireName = r'ParkingDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParkingDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.occupied != null) {
      yield r'occupied';
      yield serializers.serialize(
        object.occupied,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParkingDto object, {
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
    required ParkingDtoBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'occupied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.occupied = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParkingDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParkingDtoBuilder();
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
