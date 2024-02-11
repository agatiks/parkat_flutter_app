// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticationRequestDto extends AuthenticationRequestDto {
  @override
  final String? requestId;
  @override
  final String? code;

  factory _$AuthenticationRequestDto(
          [void Function(AuthenticationRequestDtoBuilder)? updates]) =>
      (new AuthenticationRequestDtoBuilder()..update(updates))._build();

  _$AuthenticationRequestDto._({this.requestId, this.code}) : super._();

  @override
  AuthenticationRequestDto rebuild(
          void Function(AuthenticationRequestDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationRequestDtoBuilder toBuilder() =>
      new AuthenticationRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationRequestDto &&
        requestId == other.requestId &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticationRequestDto')
          ..add('requestId', requestId)
          ..add('code', code))
        .toString();
  }
}

class AuthenticationRequestDtoBuilder
    implements
        Builder<AuthenticationRequestDto, AuthenticationRequestDtoBuilder> {
  _$AuthenticationRequestDto? _$v;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  AuthenticationRequestDtoBuilder() {
    AuthenticationRequestDto._defaults(this);
  }

  AuthenticationRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationRequestDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticationRequestDto;
  }

  @override
  void update(void Function(AuthenticationRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticationRequestDto build() => _build();

  _$AuthenticationRequestDto _build() {
    final _$result = _$v ??
        new _$AuthenticationRequestDto._(requestId: requestId, code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
