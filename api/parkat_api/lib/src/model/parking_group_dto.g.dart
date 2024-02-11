// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParkingGroupDto extends ParkingGroupDto {
  @override
  final String? name;
  @override
  final String? externalId;
  @override
  final String? id;
  @override
  final bool? enabled;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final BuiltList<ParkingDto>? parkingPlaces;

  factory _$ParkingGroupDto([void Function(ParkingGroupDtoBuilder)? updates]) =>
      (new ParkingGroupDtoBuilder()..update(updates))._build();

  _$ParkingGroupDto._(
      {this.name,
      this.externalId,
      this.id,
      this.enabled,
      this.longitude,
      this.latitude,
      this.parkingPlaces})
      : super._();

  @override
  ParkingGroupDto rebuild(void Function(ParkingGroupDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParkingGroupDtoBuilder toBuilder() =>
      new ParkingGroupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParkingGroupDto &&
        name == other.name &&
        externalId == other.externalId &&
        id == other.id &&
        enabled == other.enabled &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        parkingPlaces == other.parkingPlaces;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, parkingPlaces.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParkingGroupDto')
          ..add('name', name)
          ..add('externalId', externalId)
          ..add('id', id)
          ..add('enabled', enabled)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('parkingPlaces', parkingPlaces))
        .toString();
  }
}

class ParkingGroupDtoBuilder
    implements Builder<ParkingGroupDto, ParkingGroupDtoBuilder> {
  _$ParkingGroupDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  ListBuilder<ParkingDto>? _parkingPlaces;
  ListBuilder<ParkingDto> get parkingPlaces =>
      _$this._parkingPlaces ??= new ListBuilder<ParkingDto>();
  set parkingPlaces(ListBuilder<ParkingDto>? parkingPlaces) =>
      _$this._parkingPlaces = parkingPlaces;

  ParkingGroupDtoBuilder() {
    ParkingGroupDto._defaults(this);
  }

  ParkingGroupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _externalId = $v.externalId;
      _id = $v.id;
      _enabled = $v.enabled;
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _parkingPlaces = $v.parkingPlaces?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParkingGroupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParkingGroupDto;
  }

  @override
  void update(void Function(ParkingGroupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParkingGroupDto build() => _build();

  _$ParkingGroupDto _build() {
    _$ParkingGroupDto _$result;
    try {
      _$result = _$v ??
          new _$ParkingGroupDto._(
              name: name,
              externalId: externalId,
              id: id,
              enabled: enabled,
              longitude: longitude,
              latitude: latitude,
              parkingPlaces: _parkingPlaces?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parkingPlaces';
        _parkingPlaces?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParkingGroupDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
