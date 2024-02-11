// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_update_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenUpdateRequestDto extends TokenUpdateRequestDto {
  @override
  final String? refreshToken;

  factory _$TokenUpdateRequestDto(
          [void Function(TokenUpdateRequestDtoBuilder)? updates]) =>
      (new TokenUpdateRequestDtoBuilder()..update(updates))._build();

  _$TokenUpdateRequestDto._({this.refreshToken}) : super._();

  @override
  TokenUpdateRequestDto rebuild(
          void Function(TokenUpdateRequestDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenUpdateRequestDtoBuilder toBuilder() =>
      new TokenUpdateRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenUpdateRequestDto && refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenUpdateRequestDto')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class TokenUpdateRequestDtoBuilder
    implements Builder<TokenUpdateRequestDto, TokenUpdateRequestDtoBuilder> {
  _$TokenUpdateRequestDto? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  TokenUpdateRequestDtoBuilder() {
    TokenUpdateRequestDto._defaults(this);
  }

  TokenUpdateRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenUpdateRequestDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenUpdateRequestDto;
  }

  @override
  void update(void Function(TokenUpdateRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenUpdateRequestDto build() => _build();

  _$TokenUpdateRequestDto _build() {
    final _$result =
        _$v ?? new _$TokenUpdateRequestDto._(refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
