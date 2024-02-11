// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tariff_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TariffDto extends TariffDto {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? daysCount;
  @override
  final num? price;

  factory _$TariffDto([void Function(TariffDtoBuilder)? updates]) =>
      (new TariffDtoBuilder()..update(updates))._build();

  _$TariffDto._({this.id, this.name, this.daysCount, this.price}) : super._();

  @override
  TariffDto rebuild(void Function(TariffDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TariffDtoBuilder toBuilder() => new TariffDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TariffDto &&
        id == other.id &&
        name == other.name &&
        daysCount == other.daysCount &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, daysCount.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TariffDto')
          ..add('id', id)
          ..add('name', name)
          ..add('daysCount', daysCount)
          ..add('price', price))
        .toString();
  }
}

class TariffDtoBuilder implements Builder<TariffDto, TariffDtoBuilder> {
  _$TariffDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _daysCount;
  int? get daysCount => _$this._daysCount;
  set daysCount(int? daysCount) => _$this._daysCount = daysCount;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  TariffDtoBuilder() {
    TariffDto._defaults(this);
  }

  TariffDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _daysCount = $v.daysCount;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TariffDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TariffDto;
  }

  @override
  void update(void Function(TariffDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TariffDto build() => _build();

  _$TariffDto _build() {
    final _$result = _$v ??
        new _$TariffDto._(
            id: id, name: name, daysCount: daysCount, price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
