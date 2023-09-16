//import 'package:';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthHelper {

  /// Handle Google Signin to authenticate user
  Future<GoogleSignInAccount?> googleSignInProcess() async {
    //clientId: "12377488048-rf2eqe3jsp2ns1s7miu9910oi8tu2030.apps.googleusercontent.com"
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    if(googleUser!=null){
      //print(googleUser);
      return googleUser;
    }else
      return null;
  }

  /// To Check if the user is already signedin through google
  alreadySignIn() async{
    GoogleSignIn _googleSignIn = GoogleSignIn();
    bool alreadySignIn = await _googleSignIn.isSignedIn();
    return alreadySignIn;
  }

  /// To signout from the application if the user is signed in through google
  Future<GoogleSignInAccount?> googleSignOutProcess() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await _googleSignIn.signOut();

    return googleUser;
  }
}
