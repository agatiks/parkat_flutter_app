// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddressDto extends AddressDto {
  @override
  final String? result;
  @override
  final double? geoLat;
  @override
  final double? geoLon;

  factory _$AddressDto([void Function(AddressDtoBuilder)? updates]) =>
      (new AddressDtoBuilder()..update(updates))._build();

  _$AddressDto._({this.result, this.geoLat, this.geoLon}) : super._();

  @override
  AddressDto rebuild(void Function(AddressDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressDtoBuilder toBuilder() => new AddressDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressDto &&
        result == other.result &&
        geoLat == other.geoLat &&
        geoLon == other.geoLon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, geoLat.hashCode);
    _$hash = $jc(_$hash, geoLon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressDto')
          ..add('result', result)
          ..add('geoLat', geoLat)
          ..add('geoLon', geoLon))
        .toString();
  }
}

class AddressDtoBuilder implements Builder<AddressDto, AddressDtoBuilder> {
  _$AddressDto? _$v;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  double? _geoLat;
  double? get geoLat => _$this._geoLat;
  set geoLat(double? geoLat) => _$this._geoLat = geoLat;

  double? _geoLon;
  double? get geoLon => _$this._geoLon;
  set geoLon(double? geoLon) => _$this._geoLon = geoLon;

  AddressDtoBuilder() {
    AddressDto._defaults(this);
  }

  AddressDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _geoLat = $v.geoLat;
      _geoLon = $v.geoLon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressDto;
  }

  @override
  void update(void Function(AddressDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressDto build() => _build();

  _$AddressDto _build() {
    final _$result = _$v ??
        new _$AddressDto._(result: result, geoLat: geoLat, geoLon: geoLon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
