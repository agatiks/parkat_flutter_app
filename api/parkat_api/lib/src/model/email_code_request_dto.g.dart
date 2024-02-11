// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_code_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailCodeRequestDto extends EmailCodeRequestDto {
  @override
  final String? email;

  factory _$EmailCodeRequestDto(
          [void Function(EmailCodeRequestDtoBuilder)? updates]) =>
      (new EmailCodeRequestDtoBuilder()..update(updates))._build();

  _$EmailCodeRequestDto._({this.email}) : super._();

  @override
  EmailCodeRequestDto rebuild(
          void Function(EmailCodeRequestDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailCodeRequestDtoBuilder toBuilder() =>
      new EmailCodeRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailCodeRequestDto && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailCodeRequestDto')
          ..add('email', email))
        .toString();
  }
}

class EmailCodeRequestDtoBuilder
    implements Builder<EmailCodeRequestDto, EmailCodeRequestDtoBuilder> {
  _$EmailCodeRequestDto? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  EmailCodeRequestDtoBuilder() {
    EmailCodeRequestDto._defaults(this);
  }

  EmailCodeRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailCodeRequestDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailCodeRequestDto;
  }

  @override
  void update(void Function(EmailCodeRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailCodeRequestDto build() => _build();

  _$EmailCodeRequestDto _build() {
    final _$result = _$v ?? new _$EmailCodeRequestDto._(email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
