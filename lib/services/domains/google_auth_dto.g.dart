// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleAuthRequest _$GoogleAuthRequestFromJson(Map<String, dynamic> json) {
  return GoogleAuthRequest(
    idToken: json['idToken'] as String,
  );
}

Map<String, dynamic> _$GoogleAuthRequestToJson(GoogleAuthRequest instance) =>
    <String, dynamic>{
      'idToken': instance.idToken,
    };

GoogleAuthResponse _$GoogleAuthResponseFromJson(Map<String, dynamic> json) {
  return GoogleAuthResponse(
    idHash: json['idHash'] as String,
  );
}

Map<String, dynamic> _$GoogleAuthResponseToJson(GoogleAuthResponse instance) =>
    <String, dynamic>{
      'idHash': instance.idHash,
    };
