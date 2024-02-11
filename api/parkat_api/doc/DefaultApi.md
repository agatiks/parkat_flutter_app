# parkat_api.api.DefaultApi

## Load the API package
```dart
import 'package:parkat_api/api.dart';
```

All URIs are relative to *https://parkat.startup-dev.ru*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeParkingGroup**](DefaultApi.md#changeparkinggroup) | **PUT** /api/v1/admin/group/{parkingGroupId} | 
[**changeParkingPlace**](DefaultApi.md#changeparkingplace) | **PUT** /api/v1/admin/group/{parkingGroupId}/parking/{parkingId} | 
[**createParkingGroup**](DefaultApi.md#createparkinggroup) | **POST** /api/v1/admin/group | 
[**createParkingPlace**](DefaultApi.md#createparkingplace) | **POST** /api/v1/admin/group/{parkingGroupId}/parking | 
[**createPayment**](DefaultApi.md#createpayment) | **POST** /api/v1/payments | 
[**deleteParkingGroup**](DefaultApi.md#deleteparkinggroup) | **DELETE** /api/v1/admin/group/{parkingGroupId} | 
[**deleteParkingPlace**](DefaultApi.md#deleteparkingplace) | **DELETE** /api/v1/admin/group/{parkingGroupId}/parking/{parkingId} | 
[**findAll**](DefaultApi.md#findall) | **GET** /api/v1/admin/group | 
[**getMySelf**](DefaultApi.md#getmyself) | **GET** /api/v1/user | 
[**getParkingGroupsByCoordinates**](DefaultApi.md#getparkinggroupsbycoordinates) | **POST** /api/v1/parking/by-coordinates | 
[**getPayments**](DefaultApi.md#getpayments) | **GET** /api/v1/payments | 
[**getSuggestions**](DefaultApi.md#getsuggestions) | **GET** /api/v1/suggestions | 
[**getTariffs**](DefaultApi.md#gettariffs) | **GET** /api/v1/tariffs | 
[**getUserSubscriptions**](DefaultApi.md#getusersubscriptions) | **GET** /api/v1/subscriptions | 
[**hasUserActiveSubscription**](DefaultApi.md#hasuseractivesubscription) | **GET** /api/v1/subscriptions/has-active | 
[**requestEmailCode**](DefaultApi.md#requestemailcode) | **POST** /api/v1/authentication/request-for-code | Получение кода доступа по электронной почте
[**subscribeOnParkingUpdates**](DefaultApi.md#subscribeonparkingupdates) | **POST** /api/v1/parking/{parkingGroupId}/subscribe | 
[**unsubscribeOnParkingUpdates**](DefaultApi.md#unsubscribeonparkingupdates) | **POST** /api/v1/parking/{parkingGroupId}/unsubscribe | 
[**updateAccessToken**](DefaultApi.md#updateaccesstoken) | **POST** /api/v1/authentication/update-token | Обновление accessToken по refreshToken
[**validateEmailCode**](DefaultApi.md#validateemailcode) | **POST** /api/v1/authentication/auth | Вход по коду доступа


# **changeParkingGroup**
> ParkingGroupDto changeParkingGroup(parkingGroupId, parkingGroupDto)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String parkingGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ParkingGroupDto parkingGroupDto = ; // ParkingGroupDto | 

try {
    final response = api.changeParkingGroup(parkingGroupId, parkingGroupDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->changeParkingGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupId** | **String**|  | 
 **parkingGroupDto** | [**ParkingGroupDto**](ParkingGroupDto.md)|  | 

### Return type

[**ParkingGroupDto**](ParkingGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeParkingPlace**
> ParkingDto changeParkingPlace(parkingGroupId, parkingId, parkingDto)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String parkingGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String parkingId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ParkingDto parkingDto = ; // ParkingDto | 

try {
    final response = api.changeParkingPlace(parkingGroupId, parkingId, parkingDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->changeParkingPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupId** | **String**|  | 
 **parkingId** | **String**|  | 
 **parkingDto** | [**ParkingDto**](ParkingDto.md)|  | 

### Return type

[**ParkingDto**](ParkingDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createParkingGroup**
> ParkingGroupDto createParkingGroup(parkingGroupDto)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final ParkingGroupDto parkingGroupDto = ; // ParkingGroupDto | 

try {
    final response = api.createParkingGroup(parkingGroupDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createParkingGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupDto** | [**ParkingGroupDto**](ParkingGroupDto.md)|  | 

### Return type

[**ParkingGroupDto**](ParkingGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createParkingPlace**
> ParkingDto createParkingPlace(parkingGroupId, parkingDto)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String parkingGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ParkingDto parkingDto = ; // ParkingDto | 

try {
    final response = api.createParkingPlace(parkingGroupId, parkingDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createParkingPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupId** | **String**|  | 
 **parkingDto** | [**ParkingDto**](ParkingDto.md)|  | 

### Return type

[**ParkingDto**](ParkingDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPayment**
> PaymentDto createPayment(createPaymentRequest)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final CreatePaymentRequest createPaymentRequest = ; // CreatePaymentRequest | 

try {
    final response = api.createPayment(createPaymentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPaymentRequest** | [**CreatePaymentRequest**](CreatePaymentRequest.md)|  | 

### Return type

[**PaymentDto**](PaymentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteParkingGroup**
> deleteParkingGroup(parkingGroupId)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String parkingGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteParkingGroup(parkingGroupId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteParkingGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteParkingPlace**
> deleteParkingPlace(parkingGroupId, parkingId)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String parkingGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String parkingId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteParkingPlace(parkingGroupId, parkingId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteParkingPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupId** | **String**|  | 
 **parkingId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAll**
> BuiltList<ParkingGroupDto> findAll()



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();

try {
    final response = api.findAll();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->findAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ParkingGroupDto&gt;**](ParkingGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMySelf**
> UserDto getMySelf()



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();

try {
    final response = api.getMySelf();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getMySelf: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParkingGroupsByCoordinates**
> BuiltList<ParkingGroupDto> getParkingGroupsByCoordinates(parkingSearchRequest)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final ParkingSearchRequest parkingSearchRequest = ; // ParkingSearchRequest | 

try {
    final response = api.getParkingGroupsByCoordinates(parkingSearchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getParkingGroupsByCoordinates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingSearchRequest** | [**ParkingSearchRequest**](ParkingSearchRequest.md)|  | 

### Return type

[**BuiltList&lt;ParkingGroupDto&gt;**](ParkingGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayments**
> String getPayments()



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();

try {
    final response = api.getPayments();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getPayments: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuggestions**
> BuiltList<AddressDto> getSuggestions(query)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String query = query_example; // String | 

try {
    final response = api.getSuggestions(query);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getSuggestions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 

### Return type

[**BuiltList&lt;AddressDto&gt;**](AddressDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTariffs**
> BuiltList<TariffDto> getTariffs()



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();

try {
    final response = api.getTariffs();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getTariffs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;TariffDto&gt;**](TariffDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSubscriptions**
> BuiltList<SubscriptionDto> getUserSubscriptions()



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();

try {
    final response = api.getUserSubscriptions();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getUserSubscriptions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SubscriptionDto&gt;**](SubscriptionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hasUserActiveSubscription**
> bool hasUserActiveSubscription()



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();

try {
    final response = api.hasUserActiveSubscription();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->hasUserActiveSubscription: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestEmailCode**
> EmailCodeResponse requestEmailCode(emailCodeRequestDto)

Получение кода доступа по электронной почте

### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final EmailCodeRequestDto emailCodeRequestDto = ; // EmailCodeRequestDto | 

try {
    final response = api.requestEmailCode(emailCodeRequestDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->requestEmailCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCodeRequestDto** | [**EmailCodeRequestDto**](EmailCodeRequestDto.md)|  | 

### Return type

[**EmailCodeResponse**](EmailCodeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscribeOnParkingUpdates**
> subscribeOnParkingUpdates(parkingGroupId)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String parkingGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.subscribeOnParkingUpdates(parkingGroupId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->subscribeOnParkingUpdates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsubscribeOnParkingUpdates**
> unsubscribeOnParkingUpdates(parkingGroupId)



### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final String parkingGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.unsubscribeOnParkingUpdates(parkingGroupId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->unsubscribeOnParkingUpdates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parkingGroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccessToken**
> TokenUpdateResponse updateAccessToken(tokenUpdateRequestDto)

Обновление accessToken по refreshToken

### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final TokenUpdateRequestDto tokenUpdateRequestDto = ; // TokenUpdateRequestDto | 

try {
    final response = api.updateAccessToken(tokenUpdateRequestDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenUpdateRequestDto** | [**TokenUpdateRequestDto**](TokenUpdateRequestDto.md)|  | 

### Return type

[**TokenUpdateResponse**](TokenUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateEmailCode**
> AuthenticationResponse validateEmailCode(authenticationRequestDto)

Вход по коду доступа

### Example
```dart
import 'package:parkat_api/api.dart';

final api = ParkatApi().getDefaultApi();
final AuthenticationRequestDto authenticationRequestDto = ; // AuthenticationRequestDto | 

try {
    final response = api.validateEmailCode(authenticationRequestDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->validateEmailCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticationRequestDto** | [**AuthenticationRequestDto**](AuthenticationRequestDto.md)|  | 

### Return type

[**AuthenticationResponse**](AuthenticationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

