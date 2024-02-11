//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_update_response.g.dart';

/// TokenUpdateResponse
///
/// Properties:
/// * [accessToken]
/// * [expiresIn] - Срок жизни accessToken в секундах
@BuiltValue()
abstract class TokenUpdateResponse
    implements Built<TokenUpdateResponse, TokenUpdateResponseBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String? get accessToken;

  /// Срок жизни accessToken в секундах
  @BuiltValueField(wireName: r'expiresIn')
  int? get expiresIn;

  TokenUpdateResponse._();

  factory TokenUpdateResponse([void updates(TokenUpdateResponseBuilder b)]) =
      _$TokenUpdateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenUpdateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenUpdateResponse> get serializer =>
      _$TokenUpdateResponseSerializer();
}

class _$TokenUpdateResponseSerializer
    implements PrimitiveSerializer<TokenUpdateResponse> {
  @override
  final Iterable<Type> types = const [
    TokenUpdateResponse,
    _$TokenUpdateResponse
  ];

  @override
  final String wireName = r'TokenUpdateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenUpdateResponse object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenUpdateResponse object, {
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
    required TokenUpdateResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenUpdateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenUpdateResponseBuilder();
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
