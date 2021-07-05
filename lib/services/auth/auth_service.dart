import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:rankii/config/dependency_injector.dart';
import 'package:rankii/services/domains/google_auth_dto.dart';
import 'package:rankii/services/helpers/rankii_client.dart';

@injectable
class AuthService {
  RankiiClient get _rankiiClient => getIt<RankiiClient>();
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
  ]);

  Future<bool> googleAuth({isRefreshToken: false}) async {
    final GoogleSignInAccount? googleSignInAccount = !isRefreshToken
        ? await _googleSignIn.signIn()
        : await _googleSignIn.signInSilently();
    if (googleSignInAccount == null) throw LoginFailureException();
    final GoogleSignInAuthentication authentication =
        await googleSignInAccount.authentication;
    final requestPayload =
        GoogleAuthRequest(idToken: authentication.idToken!).toJson();
    final response = await _rankiiClient.connection
        .post("auth/google", data: requestPayload);
    final GoogleAuthResponse googleAuthResponse =
        GoogleAuthResponse.fromJson(response.data);
    print(googleAuthResponse.idHash);
    return true;
  }

  Future<void> googleSignOut() async {
    await _googleSignIn.signOut();
  }
}

class LoginFailureException implements Exception {}
