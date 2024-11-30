// Mocks generated by Mockito 5.4.4 from annotations
// in in_app_purchase_android/test/billing_client_wrappers/billing_client_wrapper_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:in_app_purchase_android/src/messages.g.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePlatformBillingResult_0 extends _i1.SmartFake
    implements _i2.PlatformBillingResult {
  _FakePlatformBillingResult_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePlatformBillingConfigResponse_1 extends _i1.SmartFake
    implements _i2.PlatformBillingConfigResponse {
  _FakePlatformBillingConfigResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePlatformPurchasesResponse_2 extends _i1.SmartFake
    implements _i2.PlatformPurchasesResponse {
  _FakePlatformPurchasesResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePlatformPurchaseHistoryResponse_3 extends _i1.SmartFake
    implements _i2.PlatformPurchaseHistoryResponse {
  _FakePlatformPurchaseHistoryResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePlatformProductDetailsResponse_4 extends _i1.SmartFake
    implements _i2.PlatformProductDetailsResponse {
  _FakePlatformProductDetailsResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePlatformAlternativeBillingOnlyReportingDetailsResponse_5
    extends _i1.SmartFake
    implements _i2.PlatformAlternativeBillingOnlyReportingDetailsResponse {
  _FakePlatformAlternativeBillingOnlyReportingDetailsResponse_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [InAppPurchaseApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockInAppPurchaseApi extends _i1.Mock implements _i2.InAppPurchaseApi {
  @override
  String get pigeonVar_messageChannelSuffix => (super.noSuchMethod(
        Invocation.getter(#pigeonVar_messageChannelSuffix),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.getter(#pigeonVar_messageChannelSuffix),
        ),
        returnValueForMissingStub: _i3.dummyValue<String>(
          this,
          Invocation.getter(#pigeonVar_messageChannelSuffix),
        ),
      ) as String);

  @override
  _i4.Future<bool> isReady() => (super.noSuchMethod(
        Invocation.method(
          #isReady,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<_i2.PlatformBillingResult> startConnection(
    int? callbackHandle,
    _i2.PlatformBillingChoiceMode? billingMode,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #startConnection,
          [
            callbackHandle,
            billingMode,
          ],
        ),
        returnValue: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #startConnection,
            [
              callbackHandle,
              billingMode,
            ],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #startConnection,
            [
              callbackHandle,
              billingMode,
            ],
          ),
        )),
      ) as _i4.Future<_i2.PlatformBillingResult>);

  @override
  _i4.Future<void> endConnection() => (super.noSuchMethod(
        Invocation.method(
          #endConnection,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<_i2.PlatformBillingConfigResponse> getBillingConfigAsync() =>
      (super.noSuchMethod(
        Invocation.method(
          #getBillingConfigAsync,
          [],
        ),
        returnValue: _i4.Future<_i2.PlatformBillingConfigResponse>.value(
            _FakePlatformBillingConfigResponse_1(
          this,
          Invocation.method(
            #getBillingConfigAsync,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.PlatformBillingConfigResponse>.value(
                _FakePlatformBillingConfigResponse_1(
          this,
          Invocation.method(
            #getBillingConfigAsync,
            [],
          ),
        )),
      ) as _i4.Future<_i2.PlatformBillingConfigResponse>);

  @override
  _i4.Future<_i2.PlatformBillingResult> launchBillingFlow(
          _i2.PlatformBillingFlowParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #launchBillingFlow,
          [params],
        ),
        returnValue: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #launchBillingFlow,
            [params],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #launchBillingFlow,
            [params],
          ),
        )),
      ) as _i4.Future<_i2.PlatformBillingResult>);

  @override
  _i4.Future<_i2.PlatformBillingResult> acknowledgePurchase(
          String? purchaseToken) =>
      (super.noSuchMethod(
        Invocation.method(
          #acknowledgePurchase,
          [purchaseToken],
        ),
        returnValue: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #acknowledgePurchase,
            [purchaseToken],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #acknowledgePurchase,
            [purchaseToken],
          ),
        )),
      ) as _i4.Future<_i2.PlatformBillingResult>);

  @override
  _i4.Future<_i2.PlatformBillingResult> consumeAsync(String? purchaseToken) =>
      (super.noSuchMethod(
        Invocation.method(
          #consumeAsync,
          [purchaseToken],
        ),
        returnValue: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #consumeAsync,
            [purchaseToken],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.PlatformBillingResult>.value(
            _FakePlatformBillingResult_0(
          this,
          Invocation.method(
            #consumeAsync,
            [purchaseToken],
          ),
        )),
      ) as _i4.Future<_i2.PlatformBillingResult>);

  @override
  _i4.Future<_i2.PlatformPurchasesResponse> queryPurchasesAsync(
          _i2.PlatformProductType? productType) =>
      (super.noSuchMethod(
        Invocation.method(
          #queryPurchasesAsync,
          [productType],
        ),
        returnValue: _i4.Future<_i2.PlatformPurchasesResponse>.value(
            _FakePlatformPurchasesResponse_2(
          this,
          Invocation.method(
            #queryPurchasesAsync,
            [productType],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.PlatformPurchasesResponse>.value(
                _FakePlatformPurchasesResponse_2(
          this,
          Invocation.method(
            #queryPurchasesAsync,
            [productType],
          ),
        )),
      ) as _i4.Future<_i2.PlatformPurchasesResponse>);

  @override
  _i4.Future<_i2.PlatformPurchaseHistoryResponse> queryPurchaseHistoryAsync(
          _i2.PlatformProductType? productType) =>
      (super.noSuchMethod(
        Invocation.method(
          #queryPurchaseHistoryAsync,
          [productType],
        ),
        returnValue: _i4.Future<_i2.PlatformPurchaseHistoryResponse>.value(
            _FakePlatformPurchaseHistoryResponse_3(
          this,
          Invocation.method(
            #queryPurchaseHistoryAsync,
            [productType],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.PlatformPurchaseHistoryResponse>.value(
                _FakePlatformPurchaseHistoryResponse_3(
          this,
          Invocation.method(
            #queryPurchaseHistoryAsync,
            [productType],
          ),
        )),
      ) as _i4.Future<_i2.PlatformPurchaseHistoryResponse>);

  @override
  _i4.Future<_i2.PlatformProductDetailsResponse> queryProductDetailsAsync(
          List<_i2.PlatformQueryProduct>? products) =>
      (super.noSuchMethod(
        Invocation.method(
          #queryProductDetailsAsync,
          [products],
        ),
        returnValue: _i4.Future<_i2.PlatformProductDetailsResponse>.value(
            _FakePlatformProductDetailsResponse_4(
          this,
          Invocation.method(
            #queryProductDetailsAsync,
            [products],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.PlatformProductDetailsResponse>.value(
                _FakePlatformProductDetailsResponse_4(
          this,
          Invocation.method(
            #queryProductDetailsAsync,
            [products],
          ),
        )),
      ) as _i4.Future<_i2.PlatformProductDetailsResponse>);

  @override
  _i4.Future<bool> isFeatureSupported(String? feature) => (super.noSuchMethod(
        Invocation.method(
          #isFeatureSupported,
          [feature],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<_i2.PlatformBillingResult>
      isAlternativeBillingOnlyAvailableAsync() => (super.noSuchMethod(
            Invocation.method(
              #isAlternativeBillingOnlyAvailableAsync,
              [],
            ),
            returnValue: _i4.Future<_i2.PlatformBillingResult>.value(
                _FakePlatformBillingResult_0(
              this,
              Invocation.method(
                #isAlternativeBillingOnlyAvailableAsync,
                [],
              ),
            )),
            returnValueForMissingStub:
                _i4.Future<_i2.PlatformBillingResult>.value(
                    _FakePlatformBillingResult_0(
              this,
              Invocation.method(
                #isAlternativeBillingOnlyAvailableAsync,
                [],
              ),
            )),
          ) as _i4.Future<_i2.PlatformBillingResult>);

  @override
  _i4.Future<_i2.PlatformBillingResult>
      showAlternativeBillingOnlyInformationDialog() => (super.noSuchMethod(
            Invocation.method(
              #showAlternativeBillingOnlyInformationDialog,
              [],
            ),
            returnValue: _i4.Future<_i2.PlatformBillingResult>.value(
                _FakePlatformBillingResult_0(
              this,
              Invocation.method(
                #showAlternativeBillingOnlyInformationDialog,
                [],
              ),
            )),
            returnValueForMissingStub:
                _i4.Future<_i2.PlatformBillingResult>.value(
                    _FakePlatformBillingResult_0(
              this,
              Invocation.method(
                #showAlternativeBillingOnlyInformationDialog,
                [],
              ),
            )),
          ) as _i4.Future<_i2.PlatformBillingResult>);

  @override
  _i4.Future<_i2.PlatformAlternativeBillingOnlyReportingDetailsResponse>
      createAlternativeBillingOnlyReportingDetailsAsync() =>
          (super.noSuchMethod(
            Invocation.method(
              #createAlternativeBillingOnlyReportingDetailsAsync,
              [],
            ),
            returnValue: _i4.Future<
                    _i2
                    .PlatformAlternativeBillingOnlyReportingDetailsResponse>.value(
                _FakePlatformAlternativeBillingOnlyReportingDetailsResponse_5(
              this,
              Invocation.method(
                #createAlternativeBillingOnlyReportingDetailsAsync,
                [],
              ),
            )),
            returnValueForMissingStub: _i4.Future<
                    _i2
                    .PlatformAlternativeBillingOnlyReportingDetailsResponse>.value(
                _FakePlatformAlternativeBillingOnlyReportingDetailsResponse_5(
              this,
              Invocation.method(
                #createAlternativeBillingOnlyReportingDetailsAsync,
                [],
              ),
            )),
          ) as _i4.Future<
              _i2.PlatformAlternativeBillingOnlyReportingDetailsResponse>);
}
