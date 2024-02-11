import 'package:test/test.dart';
import 'package:parkat_api/parkat_api.dart';

/// tests for DefaultApi
void main() {
  final instance = ParkatApi().getDefaultApi();

  group(DefaultApi, () {
    //Future<ParkingGroupDto> changeParkingGroup(String parkingGroupId, ParkingGroupDto parkingGroupDto) async
    test('test changeParkingGroup', () async {
      // TODO
    });

    //Future<ParkingDto> changeParkingPlace(String parkingGroupId, String parkingId, ParkingDto parkingDto) async
    test('test changeParkingPlace', () async {
      // TODO
    });

    //Future<ParkingGroupDto> createParkingGroup(ParkingGroupDto parkingGroupDto) async
    test('test createParkingGroup', () async {
      // TODO
    });

    //Future<ParkingDto> createParkingPlace(String parkingGroupId, ParkingDto parkingDto) async
    test('test createParkingPlace', () async {
      // TODO
    });

    //Future<PaymentDto> createPayment(CreatePaymentRequest createPaymentRequest) async
    test('test createPayment', () async {
      // TODO
    });

    //Future deleteParkingGroup(String parkingGroupId) async
    test('test deleteParkingGroup', () async {
      // TODO
    });

    //Future deleteParkingPlace(String parkingGroupId, String parkingId) async
    test('test deleteParkingPlace', () async {
      // TODO
    });

    //Future<BuiltList<ParkingGroupDto>> findAll() async
    test('test findAll', () async {
      // TODO
    });

    //Future<UserDto> getMySelf() async
    test('test getMySelf', () async {
      // TODO
    });

    //Future<BuiltList<ParkingGroupDto>> getParkingGroupsByCoordinates(ParkingSearchRequest parkingSearchRequest) async
    test('test getParkingGroupsByCoordinates', () async {
      // TODO
    });

    //Future<String> getPayments() async
    test('test getPayments', () async {
      // TODO
    });

    //Future<BuiltList<AddressDto>> getSuggestions(String query) async
    test('test getSuggestions', () async {
      // TODO
    });

    //Future<BuiltList<TariffDto>> getTariffs() async
    test('test getTariffs', () async {
      // TODO
    });

    //Future<BuiltList<SubscriptionDto>> getUserSubscriptions() async
    test('test getUserSubscriptions', () async {
      // TODO
    });

    //Future<bool> hasUserActiveSubscription() async
    test('test hasUserActiveSubscription', () async {
      // TODO
    });

    // Получение кода доступа по электронной почте
    //
    //Future<EmailCodeResponse> requestEmailCode(EmailCodeRequestDto emailCodeRequestDto) async
    test('test requestEmailCode', () async {
      // TODO
    });

    //Future subscribeOnParkingUpdates(String parkingGroupId) async
    test('test subscribeOnParkingUpdates', () async {
      // TODO
    });

    //Future unsubscribeOnParkingUpdates(String parkingGroupId) async
    test('test unsubscribeOnParkingUpdates', () async {
      // TODO
    });

    // Обновление accessToken по refreshToken
    //
    //Future<TokenUpdateResponse> updateAccessToken(TokenUpdateRequestDto tokenUpdateRequestDto) async
    test('test updateAccessToken', () async {
      // TODO
    });

    // Вход по коду доступа
    //
    //Future<AuthenticationResponse> validateEmailCode(AuthenticationRequestDto authenticationRequestDto) async
    test('test validateEmailCode', () async {
      // TODO
    });
  });
}
