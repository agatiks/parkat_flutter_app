//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_dto.g.dart';

/// SubscriptionDto
///
/// Properties:
/// * [createTs]
/// * [duration]
/// * [status]
@BuiltValue()
abstract class SubscriptionDto
    implements Built<SubscriptionDto, SubscriptionDtoBuilder> {
  @BuiltValueField(wireName: r'createTs')
  DateTime? get createTs;

  @BuiltValueField(wireName: r'duration')
  int? get duration;

  @BuiltValueField(wireName: r'status')
  SubscriptionDtoStatusEnum? get status;
  // enum statusEnum {  ACTIVE,  INACTIVE,  };

  SubscriptionDto._();

  factory SubscriptionDto([void updates(SubscriptionDtoBuilder b)]) =
      _$SubscriptionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionDto> get serializer =>
      _$SubscriptionDtoSerializer();
}

class _$SubscriptionDtoSerializer
    implements PrimitiveSerializer<SubscriptionDto> {
  @override
  final Iterable<Type> types = const [SubscriptionDto, _$SubscriptionDto];

  @override
  final String wireName = r'SubscriptionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createTs != null) {
      yield r'createTs';
      yield serializers.serialize(
        object.createTs,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SubscriptionDtoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionDto object, {
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
    required SubscriptionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'createTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createTs = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriptionDtoStatusEnum),
          ) as SubscriptionDtoStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionDtoBuilder();
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

class SubscriptionDtoStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const SubscriptionDtoStatusEnum ACTIVE =
      _$subscriptionDtoStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE', fallback: true)
  static const SubscriptionDtoStatusEnum INACTIVE =
      _$subscriptionDtoStatusEnum_INACTIVE;

  static Serializer<SubscriptionDtoStatusEnum> get serializer =>
      _$subscriptionDtoStatusEnumSerializer;

  const SubscriptionDtoStatusEnum._(String name) : super(name);

  static BuiltSet<SubscriptionDtoStatusEnum> get values =>
      _$subscriptionDtoStatusEnumValues;
  static SubscriptionDtoStatusEnum valueOf(String name) =>
      _$subscriptionDtoStatusEnumValueOf(name);
}
