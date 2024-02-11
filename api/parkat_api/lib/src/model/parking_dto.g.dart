// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParkingDto extends ParkingDto {
  @override
  final String? name;
  @override
  final String? id;
  @override
  final bool? occupied;
  @override
  final bool? enabled;

  factory _$ParkingDto([void Function(ParkingDtoBuilder)? updates]) =>
      (new ParkingDtoBuilder()..update(updates))._build();

  _$ParkingDto._({this.name, this.id, this.occupied, this.enabled}) : super._();

  @override
  ParkingDto rebuild(void Function(ParkingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParkingDtoBuilder toBuilder() => new ParkingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParkingDto &&
        name == other.name &&
        id == other.id &&
        occupied == other.occupied &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, occupied.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParkingDto')
          ..add('name', name)
          ..add('id', id)
          ..add('occupied', occupied)
          ..add('enabled', enabled))
        .toString();
  }
}

class ParkingDtoBuilder implements Builder<ParkingDto, ParkingDtoBuilder> {
  _$ParkingDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _occupied;
  bool? get occupied => _$this._occupied;
  set occupied(bool? occupied) => _$this._occupied = occupied;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ParkingDtoBuilder() {
    ParkingDto._defaults(this);
  }

  ParkingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _occupied = $v.occupied;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParkingDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParkingDto;
  }

  @override
  void update(void Function(ParkingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParkingDto build() => _build();

  _$ParkingDto _build() {
    final _$result = _$v ??
        new _$ParkingDto._(
            name: name, id: id, occupied: occupied, enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
