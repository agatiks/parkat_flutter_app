//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_dto.g.dart';

/// PaymentDto
///
/// Properties:
/// * [status]
/// * [amount]
/// * [paymentUrl]
@BuiltValue()
abstract class PaymentDto implements Built<PaymentDto, PaymentDtoBuilder> {
  @BuiltValueField(wireName: r'status')
  PaymentDtoStatusEnum? get status;
  // enum statusEnum {  NEW,  PAID,  CANCELLED,  };

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  @BuiltValueField(wireName: r'paymentUrl')
  String? get paymentUrl;

  PaymentDto._();

  factory PaymentDto([void updates(PaymentDtoBuilder b)]) = _$PaymentDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentDto> get serializer => _$PaymentDtoSerializer();
}

class _$PaymentDtoSerializer implements PrimitiveSerializer<PaymentDto> {
  @override
  final Iterable<Type> types = const [PaymentDto, _$PaymentDto];

  @override
  final String wireName = r'PaymentDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(PaymentDtoStatusEnum),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
    if (object.paymentUrl != null) {
      yield r'paymentUrl';
      yield serializers.serialize(
        object.paymentUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentDto object, {
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
    required PaymentDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentDtoStatusEnum),
          ) as PaymentDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'paymentUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentDtoBuilder();
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

class PaymentDtoStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NEW')
  static const PaymentDtoStatusEnum NEW = _$paymentDtoStatusEnum_NEW;
  @BuiltValueEnumConst(wireName: r'PAID')
  static const PaymentDtoStatusEnum PAID = _$paymentDtoStatusEnum_PAID;
  @BuiltValueEnumConst(wireName: r'CANCELLED', fallback: true)
  static const PaymentDtoStatusEnum CANCELLED =
      _$paymentDtoStatusEnum_CANCELLED;

  static Serializer<PaymentDtoStatusEnum> get serializer =>
      _$paymentDtoStatusEnumSerializer;

  const PaymentDtoStatusEnum._(String name) : super(name);

  static BuiltSet<PaymentDtoStatusEnum> get values =>
      _$paymentDtoStatusEnumValues;
  static PaymentDtoStatusEnum valueOf(String name) =>
      _$paymentDtoStatusEnumValueOf(name);
}
