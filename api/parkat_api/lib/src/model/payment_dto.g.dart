// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentDtoStatusEnum _$paymentDtoStatusEnum_NEW =
    const PaymentDtoStatusEnum._('NEW');
const PaymentDtoStatusEnum _$paymentDtoStatusEnum_PAID =
    const PaymentDtoStatusEnum._('PAID');
const PaymentDtoStatusEnum _$paymentDtoStatusEnum_CANCELLED =
    const PaymentDtoStatusEnum._('CANCELLED');

PaymentDtoStatusEnum _$paymentDtoStatusEnumValueOf(String name) {
  switch (name) {
    case 'NEW':
      return _$paymentDtoStatusEnum_NEW;
    case 'PAID':
      return _$paymentDtoStatusEnum_PAID;
    case 'CANCELLED':
      return _$paymentDtoStatusEnum_CANCELLED;
    default:
      return _$paymentDtoStatusEnum_CANCELLED;
  }
}

final BuiltSet<PaymentDtoStatusEnum> _$paymentDtoStatusEnumValues =
    new BuiltSet<PaymentDtoStatusEnum>(const <PaymentDtoStatusEnum>[
  _$paymentDtoStatusEnum_NEW,
  _$paymentDtoStatusEnum_PAID,
  _$paymentDtoStatusEnum_CANCELLED,
]);

Serializer<PaymentDtoStatusEnum> _$paymentDtoStatusEnumSerializer =
    new _$PaymentDtoStatusEnumSerializer();

class _$PaymentDtoStatusEnumSerializer
    implements PrimitiveSerializer<PaymentDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NEW': 'NEW',
    'PAID': 'PAID',
    'CANCELLED': 'CANCELLED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NEW': 'NEW',
    'PAID': 'PAID',
    'CANCELLED': 'CANCELLED',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentDtoStatusEnum];
  @override
  final String wireName = 'PaymentDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, PaymentDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaymentDtoStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PaymentDto extends PaymentDto {
  @override
  final PaymentDtoStatusEnum? status;
  @override
  final num? amount;
  @override
  final String? paymentUrl;

  factory _$PaymentDto([void Function(PaymentDtoBuilder)? updates]) =>
      (new PaymentDtoBuilder()..update(updates))._build();

  _$PaymentDto._({this.status, this.amount, this.paymentUrl}) : super._();

  @override
  PaymentDto rebuild(void Function(PaymentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentDtoBuilder toBuilder() => new PaymentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentDto &&
        status == other.status &&
        amount == other.amount &&
        paymentUrl == other.paymentUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, paymentUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentDto')
          ..add('status', status)
          ..add('amount', amount)
          ..add('paymentUrl', paymentUrl))
        .toString();
  }
}

class PaymentDtoBuilder implements Builder<PaymentDto, PaymentDtoBuilder> {
  _$PaymentDto? _$v;

  PaymentDtoStatusEnum? _status;
  PaymentDtoStatusEnum? get status => _$this._status;
  set status(PaymentDtoStatusEnum? status) => _$this._status = status;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _paymentUrl;
  String? get paymentUrl => _$this._paymentUrl;
  set paymentUrl(String? paymentUrl) => _$this._paymentUrl = paymentUrl;

  PaymentDtoBuilder() {
    PaymentDto._defaults(this);
  }

  PaymentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _amount = $v.amount;
      _paymentUrl = $v.paymentUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentDto;
  }

  @override
  void update(void Function(PaymentDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentDto build() => _build();

  _$PaymentDto _build() {
    final _$result = _$v ??
        new _$PaymentDto._(
            status: status, amount: amount, paymentUrl: paymentUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
