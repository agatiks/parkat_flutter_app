//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_response.g.dart';

/// AuthenticationResponse
///
/// Properties:
/// * [accessToken]
/// * [expiresIn] - Срок жизни accessToken в секундах
/// * [refreshToken]
@BuiltValue()
abstract class AuthenticationResponse
    implements Built<AuthenticationResponse, AuthenticationResponseBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String? get accessToken;

  /// Срок жизни accessToken в секундах
  @BuiltValueField(wireName: r'expiresIn')
  int? get expiresIn;

  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  AuthenticationResponse._();

  factory AuthenticationResponse(
          [void updates(AuthenticationResponseBuilder b)]) =
      _$AuthenticationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthenticationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthenticationResponse> get serializer =>
      _$AuthenticationResponseSerializer();
}

class _$AuthenticationResponseSerializer
    implements PrimitiveSerializer<AuthenticationResponse> {
  @override
  final Iterable<Type> types = const [
    AuthenticationResponse,
    _$AuthenticationResponse
  ];

  @override
  final String wireName = r'AuthenticationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthenticationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'accessToken';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresIn != null) {
      yield r'expiresIn';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
    if (object.refreshToken != null) {
      yield r'refreshToken';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthenticationResponse object, {
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
    required AuthenticationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'expiresIn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthenticationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthenticationResponseBuilder();
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
