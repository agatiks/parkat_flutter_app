// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenUpdateResponse extends TokenUpdateResponse {
  @override
  final String? accessToken;
  @override
  final int? expiresIn;

  factory _$TokenUpdateResponse(
          [void Function(TokenUpdateResponseBuilder)? updates]) =>
      (new TokenUpdateResponseBuilder()..update(updates))._build();

  _$TokenUpdateResponse._({this.accessToken, this.expiresIn}) : super._();

  @override
  TokenUpdateResponse rebuild(
          void Function(TokenUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenUpdateResponseBuilder toBuilder() =>
      new TokenUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenUpdateResponse &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenUpdateResponse')
          ..add('accessToken', accessToken)
          ..add('expiresIn', expiresIn))
        .toString();
  }
}

class TokenUpdateResponseBuilder
    implements Builder<TokenUpdateResponse, TokenUpdateResponseBuilder> {
  _$TokenUpdateResponse? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  TokenUpdateResponseBuilder() {
    TokenUpdateResponse._defaults(this);
  }

  TokenUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _expiresIn = $v.expiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenUpdateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenUpdateResponse;
  }

  @override
  void update(void Function(TokenUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenUpdateResponse build() => _build();

  _$TokenUpdateResponse _build() {
    final _$result = _$v ??
        new _$TokenUpdateResponse._(
            accessToken: accessToken, expiresIn: expiresIn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
