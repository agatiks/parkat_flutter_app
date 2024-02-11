// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_code_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailCodeResponse extends EmailCodeResponse {
  @override
  final String? requestId;

  factory _$EmailCodeResponse(
          [void Function(EmailCodeResponseBuilder)? updates]) =>
      (new EmailCodeResponseBuilder()..update(updates))._build();

  _$EmailCodeResponse._({this.requestId}) : super._();

  @override
  EmailCodeResponse rebuild(void Function(EmailCodeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailCodeResponseBuilder toBuilder() =>
      new EmailCodeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailCodeResponse && requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailCodeResponse')
          ..add('requestId', requestId))
        .toString();
  }
}

class EmailCodeResponseBuilder
    implements Builder<EmailCodeResponse, EmailCodeResponseBuilder> {
  _$EmailCodeResponse? _$v;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  EmailCodeResponseBuilder() {
    EmailCodeResponse._defaults(this);
  }

  EmailCodeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailCodeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailCodeResponse;
  }

  @override
  void update(void Function(EmailCodeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailCodeResponse build() => _build();

  _$EmailCodeResponse _build() {
    final _$result = _$v ?? new _$EmailCodeResponse._(requestId: requestId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
