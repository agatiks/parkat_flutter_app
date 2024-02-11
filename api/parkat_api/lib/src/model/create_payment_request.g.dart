// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePaymentRequest extends CreatePaymentRequest {
  @override
  final String? tariffId;

  factory _$CreatePaymentRequest(
          [void Function(CreatePaymentRequestBuilder)? updates]) =>
      (new CreatePaymentRequestBuilder()..update(updates))._build();

  _$CreatePaymentRequest._({this.tariffId}) : super._();

  @override
  CreatePaymentRequest rebuild(
          void Function(CreatePaymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePaymentRequestBuilder toBuilder() =>
      new CreatePaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePaymentRequest && tariffId == other.tariffId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tariffId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePaymentRequest')
          ..add('tariffId', tariffId))
        .toString();
  }
}

class CreatePaymentRequestBuilder
    implements Builder<CreatePaymentRequest, CreatePaymentRequestBuilder> {
  _$CreatePaymentRequest? _$v;

  String? _tariffId;
  String? get tariffId => _$this._tariffId;
  set tariffId(String? tariffId) => _$this._tariffId = tariffId;

  CreatePaymentRequestBuilder() {
    CreatePaymentRequest._defaults(this);
  }

  CreatePaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tariffId = $v.tariffId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePaymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePaymentRequest;
  }

  @override
  void update(void Function(CreatePaymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePaymentRequest build() => _build();

  _$CreatePaymentRequest _build() {
    final _$result = _$v ?? new _$CreatePaymentRequest._(tariffId: tariffId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
