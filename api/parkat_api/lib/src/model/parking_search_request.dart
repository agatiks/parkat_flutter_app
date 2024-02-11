//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parking_search_request.g.dart';

/// ParkingSearchRequest
///
/// Properties:
/// * [longitude]
/// * [latitude]
/// * [radius]
@BuiltValue()
abstract class ParkingSearchRequest
    implements Built<ParkingSearchRequest, ParkingSearchRequestBuilder> {
  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  @BuiltValueField(wireName: r'radius')
  double? get radius;

  ParkingSearchRequest._();

  factory ParkingSearchRequest([void updates(ParkingSearchRequestBuilder b)]) =
      _$ParkingSearchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParkingSearchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParkingSearchRequest> get serializer =>
      _$ParkingSearchRequestSerializer();
}

class _$ParkingSearchRequestSerializer
    implements PrimitiveSerializer<ParkingSearchRequest> {
  @override
  final Iterable<Type> types = const [
    ParkingSearchRequest,
    _$ParkingSearchRequest
  ];

  @override
  final String wireName = r'ParkingSearchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParkingSearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.radius != null) {
      yield r'radius';
      yield serializers.serialize(
        object.radius,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParkingSearchRequest object, {
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
    required ParkingSearchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'radius':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.radius = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParkingSearchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParkingSearchRequestBuilder();
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
