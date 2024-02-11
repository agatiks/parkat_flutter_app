//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_update_request_dto.g.dart';

/// TokenUpdateRequestDto
///
/// Properties:
/// * [refreshToken]
@BuiltValue()
abstract class TokenUpdateRequestDto
    implements Built<TokenUpdateRequestDto, TokenUpdateRequestDtoBuilder> {
  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  TokenUpdateRequestDto._();

  factory TokenUpdateRequestDto(
      [void updates(TokenUpdateRequestDtoBuilder b)]) = _$TokenUpdateRequestDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenUpdateRequestDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenUpdateRequestDto> get serializer =>
      _$TokenUpdateRequestDtoSerializer();
}

class _$TokenUpdateRequestDtoSerializer
    implements PrimitiveSerializer<TokenUpdateRequestDto> {
  @override
  final Iterable<Type> types = const [
    TokenUpdateRequestDto,
    _$TokenUpdateRequestDto
  ];

  @override
  final String wireName = r'TokenUpdateRequestDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenUpdateRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    TokenUpdateRequestDto object, {
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
    required TokenUpdateRequestDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  TokenUpdateRequestDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenUpdateRequestDtoBuilder();
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
