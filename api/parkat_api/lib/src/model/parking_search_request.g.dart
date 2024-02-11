// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_search_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParkingSearchRequest extends ParkingSearchRequest {
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final double? radius;

  factory _$ParkingSearchRequest(
          [void Function(ParkingSearchRequestBuilder)? updates]) =>
      (new ParkingSearchRequestBuilder()..update(updates))._build();

  _$ParkingSearchRequest._({this.longitude, this.latitude, this.radius})
      : super._();

  @override
  ParkingSearchRequest rebuild(
          void Function(ParkingSearchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParkingSearchRequestBuilder toBuilder() =>
      new ParkingSearchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParkingSearchRequest &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        radius == other.radius;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, radius.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParkingSearchRequest')
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('radius', radius))
        .toString();
  }
}

class ParkingSearchRequestBuilder
    implements Builder<ParkingSearchRequest, ParkingSearchRequestBuilder> {
  _$ParkingSearchRequest? _$v;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _radius;
  double? get radius => _$this._radius;
  set radius(double? radius) => _$this._radius = radius;

  ParkingSearchRequestBuilder() {
    ParkingSearchRequest._defaults(this);
  }

  ParkingSearchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _radius = $v.radius;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParkingSearchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParkingSearchRequest;
  }

  @override
  void update(void Function(ParkingSearchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParkingSearchRequest build() => _build();

  _$ParkingSearchRequest _build() {
    final _$result = _$v ??
        new _$ParkingSearchRequest._(
            longitude: longitude, latitude: latitude, radius: radius);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
