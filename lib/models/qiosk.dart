


class KioskModel {
  KioskModel({
    required this.id,
    required this.pending,
    required this.amountCents,
    required this.success,
    required this.isAuth,
    required this.isCapture,
    required this.isStandalonePayment,
    required this.isVoided,
    required this.isRefunded,
    required this.is3DSecure,
    required this.integrationId,
    required this.profileId,
    required this.hasParentTransaction,
    required this.order,
    required this.createdAt,
    required this.transactionProcessedCallbackResponses,
    required this.currency,
    required this.sourceData,
    required this.apiSource,
    required this.terminalId,
    required this.merchantCommission,
    required this.installment,
    required this.discountDetails,
    required this.isVoid,
    required this.isRefund,
    required this.data,
    required this.isHidden,
    required this.paymentKeyClaims,
    required this.errorOccured,
    required this.isLive,
    required this.otherEndpointReference,
    required this.refundedAmountCents,
    required this.sourceId,
    required this.isCaptured,
    required this.capturedAmount,
    required this.merchantStaffTag,
    required this.updatedAt,
    required this.owner,
    required this.parentTransaction,
  });

  int? id;
  bool? pending;
  int? amountCents;
  bool? success;
  bool? isAuth;
  bool? isCapture;
  bool? isStandalonePayment;
  bool? isVoided;
  bool? isRefunded;
  bool? is3DSecure;
  int? integrationId;
  int? profileId;
  bool? hasParentTransaction;
  Order? order;
  DateTime? createdAt;
  List<dynamic>? transactionProcessedCallbackResponses;
  String? currency;
  SourceData? sourceData;
  String? apiSource;
  dynamic terminalId;
  int? merchantCommission;
  dynamic installment;
  List<dynamic>? discountDetails;
  bool? isVoid;
  bool? isRefund;
  KioskModelData? data;
  bool? isHidden;
  PaymentKeyClaims? paymentKeyClaims;
  bool? errorOccured;
  bool? isLive;
  dynamic otherEndpointReference;
  int? refundedAmountCents;
  int? sourceId;
  bool? isCaptured;
  int? capturedAmount;
  dynamic merchantStaffTag;
  DateTime? updatedAt;
  int? owner;
  dynamic parentTransaction;

  factory KioskModel.fromJson(Map<String, dynamic> json) => KioskModel(
    id: json["id"],
    pending: json["pending"],
    amountCents: json["amount_cents"],
    success: json["success"],
    isAuth: json["is_auth"],
    isCapture: json["is_capture"],
    isStandalonePayment: json["is_standalone_payment"],
    isVoided: json["is_voided"],
    isRefunded: json["is_refunded"],
    is3DSecure: json["is_3d_secure"],
    integrationId: json["integration_id"],
    profileId: json["profile_id"],
    hasParentTransaction: json["has_parent_transaction"],
    order: Order.fromJson(json["order"]),
    createdAt: DateTime.parse(json["created_at"]),
    transactionProcessedCallbackResponses: json["transaction_processed_callback_responses"] == null ? [] : List<dynamic>.from(json["transaction_processed_callback_responses"]!.map((x) => x)),
    currency: json["currency"],
    sourceData: SourceData.fromJson(json["source_data"]),
    apiSource: json["api_source"],
    terminalId: json["terminal_id"],
    merchantCommission: json["merchant_commission"],
    installment: json["installment"],
    discountDetails: json["discount_details"] == null ? [] : List<dynamic>.from(json["discount_details"]!.map((x) => x)),
    isVoid: json["is_void"],
    isRefund: json["is_refund"],
    data: KioskModelData.fromJson(json["data"]),
    isHidden: json["is_hidden"],
    paymentKeyClaims: PaymentKeyClaims.fromJson(json["payment_key_claims"]),
    errorOccured: json["error_occured"],
    isLive: json["is_live"],
    otherEndpointReference: json["other_endpoint_reference"],
    refundedAmountCents: json["refunded_amount_cents"],
    sourceId: json["source_id"],
    isCaptured: json["is_captured"],
    capturedAmount: json["captured_amount"],
    merchantStaffTag: json["merchant_staff_tag"],
    updatedAt: DateTime.parse(json["updated_at"]),
    owner: json["owner"],
    parentTransaction: json["parent_transaction"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "pending": pending,
    "amount_cents": amountCents,
    "success": success,
    "is_auth": isAuth,
    "is_capture": isCapture,
    "is_standalone_payment": isStandalonePayment,
    "is_voided": isVoided,
    "is_refunded": isRefunded,
    "is_3d_secure": is3DSecure,
    "integration_id": integrationId,
    "profile_id": profileId,
    "has_parent_transaction": hasParentTransaction,
    "order": order!.toJson(),
    "created_at": createdAt?.toIso8601String(),
    "transaction_processed_callback_responses": transactionProcessedCallbackResponses == null ? [] : List<dynamic>.from(transactionProcessedCallbackResponses!.map((x) => x)),
    "currency": currency,
    "source_data": sourceData!.toJson(),
    "api_source": apiSource,
    "terminal_id": terminalId,
    "merchant_commission": merchantCommission,
    "installment": installment,
    "discount_details": discountDetails == null ? [] : List<dynamic>.from(discountDetails!.map((x) => x)),
    "is_void": isVoid,
    "is_refund": isRefund,
    "data": data!.toJson(),
    "is_hidden": isHidden,
    "payment_key_claims": paymentKeyClaims!.toJson(),
    "error_occured": errorOccured,
    "is_live": isLive,
    "other_endpoint_reference": otherEndpointReference,
    "refunded_amount_cents": refundedAmountCents,
    "source_id": sourceId,
    "is_captured": isCaptured,
    "captured_amount": capturedAmount,
    "merchant_staff_tag": merchantStaffTag,
    "updated_at": updatedAt?.toIso8601String(),
    "owner": owner,
    "parent_transaction": parentTransaction,
  };
}

class KioskModelData {
  KioskModelData({
    required this.gatewayIntegrationPk,
    required this.biller,
    required this.cashoutAmount,
    required this.ref,
    required this.paidThrough,
    required this.aggTerminal,
    required this.fromUser,
    required this.dueAmount,
    required this.rrn,
    required this.klass,
    required this.txnResponseCode,
    required this.message,
    required this.amount,
    required this.otp,
    required this.billReference,
  });

  int? gatewayIntegrationPk;
  dynamic biller;
  dynamic cashoutAmount;
  dynamic ref;
  String? paidThrough;
  dynamic aggTerminal;
  dynamic fromUser;
  int? dueAmount;
  dynamic rrn;
  String? klass;
  String? txnResponseCode;
  String? message;
  dynamic amount;
  String? otp;
  int? billReference;

  factory KioskModelData.fromJson(Map<String, dynamic> json) => KioskModelData(
    gatewayIntegrationPk: json["gateway_integration_pk"],
    biller: json["biller"],
    cashoutAmount: json["cashout_amount"],
    ref: json["ref"],
    paidThrough: json["paid_through"],
    aggTerminal: json["agg_terminal"],
    fromUser: json["from_user"],
    dueAmount: json["due_amount"],
    rrn: json["rrn"],
    klass: json["klass"],
    txnResponseCode: json["txn_response_code"],
    message: json["message"],
    amount: json["amount"],
    otp: json["otp"],
    billReference: json["bill_reference"],
  );

  Map<String, dynamic> toJson() => {
    "gateway_integration_pk": gatewayIntegrationPk,
    "biller": biller,
    "cashout_amount": cashoutAmount,
    "ref": ref,
    "paid_through": paidThrough,
    "agg_terminal": aggTerminal,
    "from_user": fromUser,
    "due_amount": dueAmount,
    "rrn": rrn,
    "klass": klass,
    "txn_response_code": txnResponseCode,
    "message": message,
    "amount": amount,
    "otp": otp,
    "bill_reference": billReference,
  };
}

class Order {
  Order({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    required this.collector,
    required this.amountCents,
    required this.shippingData,
    required this.currency,
    required this.isPaymentLocked,
    required this.isReturn,
    required this.isCancel,
    required this.isReturned,
    required this.isCanceled,
    required this.merchantOrderId,
    required this.walletNotification,
    required this.paidAmountCents,
    required this.notifyUserWithEmail,
    required this.items,
    required this.orderUrl,
    required this.commissionFees,
    required this.deliveryFeesCents,
    required this.deliveryVatCents,
    required this.paymentMethod,
    required this.merchantStaffTag,
    required this.apiSource,
    required this.data,
  });

  int? id;
  DateTime? createdAt;
  bool? deliveryNeeded;
  Merchant? merchant;
  dynamic collector;
  int? amountCents;
  IngData? shippingData;
  String? currency;
  bool? isPaymentLocked;
  bool? isReturn;
  bool? isCancel;
  bool? isReturned;
  bool? isCanceled;
  dynamic merchantOrderId;
  dynamic walletNotification;
  int? paidAmountCents;
  bool? notifyUserWithEmail;
  List<Item?>? items;
  String? orderUrl;
  int? commissionFees;
  int? deliveryFeesCents;
  int? deliveryVatCents;
  String? paymentMethod;
  dynamic merchantStaffTag;
  String? apiSource;
  ExtraClass? data;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["id"],
    createdAt: DateTime.parse(json["created_at"]),
    deliveryNeeded: json["delivery_needed"],
    merchant: Merchant.fromJson(json["merchant"]),
    collector: json["collector"],
    amountCents: json["amount_cents"],
    shippingData: IngData.fromJson(json["shipping_data"]),
    currency: json["currency"],
    isPaymentLocked: json["is_payment_locked"],
    isReturn: json["is_return"],
    isCancel: json["is_cancel"],
    isReturned: json["is_returned"],
    isCanceled: json["is_canceled"],
    merchantOrderId: json["merchant_order_id"],
    walletNotification: json["wallet_notification"],
    paidAmountCents: json["paid_amount_cents"],
    notifyUserWithEmail: json["notify_user_with_email"],
    items: json["items"] == null ? [] : List<Item?>.from(json["items"]!.map((x) => Item.fromJson(x))),
    orderUrl: json["order_url"],
    commissionFees: json["commission_fees"],
    deliveryFeesCents: json["delivery_fees_cents"],
    deliveryVatCents: json["delivery_vat_cents"],
    paymentMethod: json["payment_method"],
    merchantStaffTag: json["merchant_staff_tag"],
    apiSource: json["api_source"],
    data: ExtraClass.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt?.toIso8601String(),
    "delivery_needed": deliveryNeeded,
    "merchant": merchant!.toJson(),
    "collector": collector,
    "amount_cents": amountCents,
    "shipping_data": shippingData!.toJson(),
    "currency": currency,
    "is_payment_locked": isPaymentLocked,
    "is_return": isReturn,
    "is_cancel": isCancel,
    "is_returned": isReturned,
    "is_canceled": isCanceled,
    "merchant_order_id": merchantOrderId,
    "wallet_notification": walletNotification,
    "paid_amount_cents": paidAmountCents,
    "notify_user_with_email": notifyUserWithEmail,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x!.toJson())),
    "order_url": orderUrl,
    "commission_fees": commissionFees,
    "delivery_fees_cents": deliveryFeesCents,
    "delivery_vat_cents": deliveryVatCents,
    "payment_method": paymentMethod,
    "merchant_staff_tag": merchantStaffTag,
    "api_source": apiSource,
    "data": data!.toJson(),
  };
}

class ExtraClass {
  ExtraClass();

  factory ExtraClass.fromJson(Map<String, dynamic> json) => ExtraClass(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Item {
  Item({
    required this.name,
    required this.description,
    required this.amountCents,
    required this.quantity,
  });

  String? name;
  String? description;
  int? amountCents;
  int? quantity;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    name: json["name"],
    description: json["description"],
    amountCents: json["amount_cents"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "amount_cents": amountCents,
    "quantity": quantity,
  };
}

class Merchant {
  Merchant({
    required this.id,
    required this.createdAt,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

  int? id;
  DateTime? createdAt;
  List<String?>? phones;
  List<String?>? companyEmails;
  String? companyName;
  String? state;
  String? country;
  String? city;
  String? postalCode;
  String? street;

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
    id: json["id"],
    createdAt: DateTime.parse(json["created_at"]),
    phones: json["phones"] == null ? [] : List<String?>.from(json["phones"]!.map((x) => x)),
    companyEmails: json["company_emails"] == null ? [] : List<String?>.from(json["company_emails"]!.map((x) => x)),
    companyName: json["company_name"],
    state: json["state"],
    country: json["country"],
    city: json["city"],
    postalCode: json["postal_code"],
    street: json["street"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt?.toIso8601String(),
    "phones": phones == null ? [] : List<dynamic>.from(phones!.map((x) => x)),
    "company_emails": companyEmails == null ? [] : List<dynamic>.from(companyEmails!.map((x) => x)),
    "company_name": companyName,
    "state": state,
    "country": country,
    "city": city,
    "postal_code": postalCode,
    "street": street,
  };
}

class IngData {
  IngData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.phoneNumber,
    required this.postalCode,
    required this.extraDescription,
    required this.shippingMethod,
    required this.orderId,
    required this.order,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? street;
  String? building;
  String? floor;
  String? apartment;
  String? city;
  String? state;
  String? country;
  String? email;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;
  String? shippingMethod;
  int? orderId;
  int? order;

  factory IngData.fromJson(Map<String, dynamic> json) => IngData(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    street: json["street"],
    building: json["building"],
    floor: json["floor"],
    apartment: json["apartment"],
    city: json["city"],
    state: json["state"],
    country: json["country"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    postalCode: json["postal_code"],
    extraDescription: json["extra_description"],
    shippingMethod: json["shipping_method"],
    orderId: json["order_id"],
    order: json["order"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "street": street,
    "building": building,
    "floor": floor,
    "apartment": apartment,
    "city": city,
    "state": state,
    "country": country,
    "email": email,
    "phone_number": phoneNumber,
    "postal_code": postalCode,
    "extra_description": extraDescription,
    "shipping_method": shippingMethod,
    "order_id": orderId,
    "order": order,
  };
}

class PaymentKeyClaims {
  PaymentKeyClaims({
    required this.userId,
    required this.exp,
    required this.singlePaymentAttempt,
    required this.integrationId,
    required this.extra,
    required this.amountCents,
    required this.pmkIp,
    required this.currency,
    required this.lockOrderWhenPaid,
    required this.billingData,
    required this.orderId,
  });

  int? userId;
  int? exp;
  bool? singlePaymentAttempt;
  int? integrationId;
  ExtraClass? extra;
  int? amountCents;
  String? pmkIp;
  String? currency;
  bool? lockOrderWhenPaid;
  IngData? billingData;
  int? orderId;

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) => PaymentKeyClaims(
    userId: json["user_id"],
    exp: json["exp"],
    singlePaymentAttempt: json["single_payment_attempt"],
    integrationId: json["integration_id"],
    extra: ExtraClass.fromJson(json["extra"]),
    amountCents: json["amount_cents"],
    pmkIp: json["pmk_ip"],
    currency: json["currency"],
    lockOrderWhenPaid: json["lock_order_when_paid"],
    billingData: IngData.fromJson(json["billing_data"]),
    orderId: json["order_id"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "exp": exp,
    "single_payment_attempt": singlePaymentAttempt,
    "integration_id": integrationId,
    "extra": extra!.toJson(),
    "amount_cents": amountCents,
    "pmk_ip": pmkIp,
    "currency": currency,
    "lock_order_when_paid": lockOrderWhenPaid,
    "billing_data": billingData!.toJson(),
    "order_id": orderId,
  };
}

class SourceData {
  SourceData({
    required this.pan,
    required this.subType,
    required this.type,
  });

  String? pan;
  String? subType;
  String? type;

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
    pan: json["pan"],
    subType: json["sub_type"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "pan": pan,
    "sub_type": subType,
    "type": type,
  };
}
