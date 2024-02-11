//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:parkat_api/src/date_serializer.dart';
import 'package:parkat_api/src/model/date.dart';

import 'package:parkat_api/src/model/address_dto.dart';
import 'package:parkat_api/src/model/authentication_request_dto.dart';
import 'package:parkat_api/src/model/authentication_response.dart';
import 'package:parkat_api/src/model/create_payment_request.dart';
import 'package:parkat_api/src/model/email_code_request_dto.dart';
import 'package:parkat_api/src/model/email_code_response.dart';
import 'package:parkat_api/src/model/parking_dto.dart';
import 'package:parkat_api/src/model/parking_group_dto.dart';
import 'package:parkat_api/src/model/parking_search_request.dart';
import 'package:parkat_api/src/model/payment_dto.dart';
import 'package:parkat_api/src/model/subscription_dto.dart';
import 'package:parkat_api/src/model/tariff_dto.dart';
import 'package:parkat_api/src/model/token_update_request_dto.dart';
import 'package:parkat_api/src/model/token_update_response.dart';
import 'package:parkat_api/src/model/user_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddressDto,
  AuthenticationRequestDto,
  AuthenticationResponse,
  CreatePaymentRequest,
  EmailCodeRequestDto,
  EmailCodeResponse,
  ParkingDto,
  ParkingGroupDto,
  ParkingSearchRequest,
  PaymentDto,
  SubscriptionDto,
  TariffDto,
  TokenUpdateRequestDto,
  TokenUpdateResponse,
  UserDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TariffDto)]),
        () => ListBuilder<TariffDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SubscriptionDto)]),
        () => ListBuilder<SubscriptionDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AddressDto)]),
        () => ListBuilder<AddressDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ParkingGroupDto)]),
        () => ListBuilder<ParkingGroupDto>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
