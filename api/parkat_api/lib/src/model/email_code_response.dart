//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_code_response.g.dart';

/// EmailCodeResponse
///
/// Properties:
/// * [requestId]
@BuiltValue()
abstract class EmailCodeResponse
    implements Built<EmailCodeResponse, EmailCodeResponseBuilder> {
  @BuiltValueField(wireName: r'requestId')
  String? get requestId;

  EmailCodeResponse._();

  factory EmailCodeResponse([void updates(EmailCodeResponseBuilder b)]) =
      _$EmailCodeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailCodeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailCodeResponse> get serializer =>
      _$EmailCodeResponseSerializer();
}

class _$EmailCodeResponseSerializer
    implements PrimitiveSerializer<EmailCodeResponse> {
  @override
  final Iterable<Type> types = const [EmailCodeResponse, _$EmailCodeResponse];

  @override
  final String wireName = r'EmailCodeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.requestId != null) {
      yield r'requestId';
      yield serializers.serialize(
        object.requestId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmailCodeResponse object, {
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
    required EmailCodeResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'requestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmailCodeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailCodeResponseBuilder();
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
