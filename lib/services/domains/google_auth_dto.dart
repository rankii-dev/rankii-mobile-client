import 'package:json_annotation/json_annotation.dart';

part 'google_auth_dto.g.dart';

@JsonSerializable()
class GoogleAuthRequest {
  String idToken;

  GoogleAuthRequest({
    required this.idToken,
  });

  factory GoogleAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthRequestFromJson(json);
  Map<String, dynamic> toJson() => _$GoogleAuthRequestToJson(this);
}

@JsonSerializable()
class GoogleAuthResponse {
  String idHash;

  GoogleAuthResponse({
    required this.idHash,
  });

  factory GoogleAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GoogleAuthResponseToJson(this);
}
