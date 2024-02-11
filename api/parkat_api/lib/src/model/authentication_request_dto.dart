//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_request_dto.g.dart';

/// AuthenticationRequestDto
///
/// Properties:
/// * [requestId] - ID запроса на получение кода
/// * [code] - Код из письма
@BuiltValue()
abstract class AuthenticationRequestDto
    implements
        Built<AuthenticationRequestDto, AuthenticationRequestDtoBuilder> {
  /// ID запроса на получение кода
  @BuiltValueField(wireName: r'requestId')
  String? get requestId;

  /// Код из письма
  @BuiltValueField(wireName: r'code')
  String? get code;

  AuthenticationRequestDto._();

  factory AuthenticationRequestDto(
          [void updates(AuthenticationRequestDtoBuilder b)]) =
      _$AuthenticationRequestDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthenticationRequestDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthenticationRequestDto> get serializer =>
      _$AuthenticationRequestDtoSerializer();
}

class _$AuthenticationRequestDtoSerializer
    implements PrimitiveSerializer<AuthenticationRequestDto> {
  @override
  final Iterable<Type> types = const [
    AuthenticationRequestDto,
    _$AuthenticationRequestDto
  ];

  @override
  final String wireName = r'AuthenticationRequestDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthenticationRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.requestId != null) {
      yield r'requestId';
      yield serializers.serialize(
        object.requestId,
        specifiedType: const FullType(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthenticationRequestDto object, {
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
    required AuthenticationRequestDtoBuilder result,
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
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthenticationRequestDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthenticationRequestDtoBuilder();
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
