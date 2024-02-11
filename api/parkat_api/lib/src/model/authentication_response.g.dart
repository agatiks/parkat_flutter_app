// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticationResponse extends AuthenticationResponse {
  @override
  final String? accessToken;
  @override
  final int? expiresIn;
  @override
  final String? refreshToken;

  factory _$AuthenticationResponse(
          [void Function(AuthenticationResponseBuilder)? updates]) =>
      (new AuthenticationResponseBuilder()..update(updates))._build();

  _$AuthenticationResponse._(
      {this.accessToken, this.expiresIn, this.refreshToken})
      : super._();

  @override
  AuthenticationResponse rebuild(
          void Function(AuthenticationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationResponseBuilder toBuilder() =>
      new AuthenticationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationResponse &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticationResponse')
          ..add('accessToken', accessToken)
          ..add('expiresIn', expiresIn)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class AuthenticationResponseBuilder
    implements Builder<AuthenticationResponse, AuthenticationResponseBuilder> {
  _$AuthenticationResponse? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  AuthenticationResponseBuilder() {
    AuthenticationResponse._defaults(this);
  }

  AuthenticationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _expiresIn = $v.expiresIn;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticationResponse;
  }

  @override
  void update(void Function(AuthenticationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticationResponse build() => _build();

  _$AuthenticationResponse _build() {
    final _$result = _$v ??
        new _$AuthenticationResponse._(
            accessToken: accessToken,
            expiresIn: expiresIn,
            refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
