// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionDtoStatusEnum _$subscriptionDtoStatusEnum_ACTIVE =
    const SubscriptionDtoStatusEnum._('ACTIVE');
const SubscriptionDtoStatusEnum _$subscriptionDtoStatusEnum_INACTIVE =
    const SubscriptionDtoStatusEnum._('INACTIVE');

SubscriptionDtoStatusEnum _$subscriptionDtoStatusEnumValueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$subscriptionDtoStatusEnum_ACTIVE;
    case 'INACTIVE':
      return _$subscriptionDtoStatusEnum_INACTIVE;
    default:
      return _$subscriptionDtoStatusEnum_INACTIVE;
  }
}

final BuiltSet<SubscriptionDtoStatusEnum> _$subscriptionDtoStatusEnumValues =
    new BuiltSet<SubscriptionDtoStatusEnum>(const <SubscriptionDtoStatusEnum>[
  _$subscriptionDtoStatusEnum_ACTIVE,
  _$subscriptionDtoStatusEnum_INACTIVE,
]);

Serializer<SubscriptionDtoStatusEnum> _$subscriptionDtoStatusEnumSerializer =
    new _$SubscriptionDtoStatusEnumSerializer();

class _$SubscriptionDtoStatusEnumSerializer
    implements PrimitiveSerializer<SubscriptionDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
  };

  @override
  final Iterable<Type> types = const <Type>[SubscriptionDtoStatusEnum];
  @override
  final String wireName = 'SubscriptionDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, SubscriptionDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubscriptionDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubscriptionDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SubscriptionDto extends SubscriptionDto {
  @override
  final DateTime? createTs;
  @override
  final int? duration;
  @override
  final SubscriptionDtoStatusEnum? status;

  factory _$SubscriptionDto([void Function(SubscriptionDtoBuilder)? updates]) =>
      (new SubscriptionDtoBuilder()..update(updates))._build();

  _$SubscriptionDto._({this.createTs, this.duration, this.status}) : super._();

  @override
  SubscriptionDto rebuild(void Function(SubscriptionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionDtoBuilder toBuilder() =>
      new SubscriptionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionDto &&
        createTs == other.createTs &&
        duration == other.duration &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createTs.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionDto')
          ..add('createTs', createTs)
          ..add('duration', duration)
          ..add('status', status))
        .toString();
  }
}

class SubscriptionDtoBuilder
    implements Builder<SubscriptionDto, SubscriptionDtoBuilder> {
  _$SubscriptionDto? _$v;

  DateTime? _createTs;
  DateTime? get createTs => _$this._createTs;
  set createTs(DateTime? createTs) => _$this._createTs = createTs;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  SubscriptionDtoStatusEnum? _status;
  SubscriptionDtoStatusEnum? get status => _$this._status;
  set status(SubscriptionDtoStatusEnum? status) => _$this._status = status;

  SubscriptionDtoBuilder() {
    SubscriptionDto._defaults(this);
  }

  SubscriptionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createTs = $v.createTs;
      _duration = $v.duration;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscriptionDto;
  }

  @override
  void update(void Function(SubscriptionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionDto build() => _build();

  _$SubscriptionDto _build() {
    final _$result = _$v ??
        new _$SubscriptionDto._(
            createTs: createTs, duration: duration, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
