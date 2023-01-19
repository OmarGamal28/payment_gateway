class RequestTokenModel {
  RequestTokenModel({
    required this.token,
  });

  String? token;

  factory RequestTokenModel.fromJson(Map<String, dynamic> json) => RequestTokenModel(
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
