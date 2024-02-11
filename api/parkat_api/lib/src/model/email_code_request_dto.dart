//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_code_request_dto.g.dart';

/// EmailCodeRequestDto
///
/// Properties:
/// * [email] - Электронная почта
@BuiltValue()
abstract class EmailCodeRequestDto
    implements Built<EmailCodeRequestDto, EmailCodeRequestDtoBuilder> {
  /// Электронная почта
  @BuiltValueField(wireName: r'email')
  String? get email;

  EmailCodeRequestDto._();

  factory EmailCodeRequestDto([void updates(EmailCodeRequestDtoBuilder b)]) =
      _$EmailCodeRequestDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailCodeRequestDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailCodeRequestDto> get serializer =>
      _$EmailCodeRequestDtoSerializer();
}

class _$EmailCodeRequestDtoSerializer
    implements PrimitiveSerializer<EmailCodeRequestDto> {
  @override
  final Iterable<Type> types = const [
    EmailCodeRequestDto,
    _$EmailCodeRequestDto
  ];

  @override
  final String wireName = r'EmailCodeRequestDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailCodeRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmailCodeRequestDto object, {
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
    required EmailCodeRequestDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmailCodeRequestDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailCodeRequestDtoBuilder();
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
