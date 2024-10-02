import 'package:get/get.dart';
import 'package:pollutant/src/screens/auth/change_password/screen.dart';
import 'package:pollutant/src/screens/auth/messages/email_verification.dart';
import 'package:pollutant/src/screens/auth/messages/err_404.dart';
import 'package:pollutant/src/screens/auth/messages/err_system.dart';
import 'package:pollutant/src/screens/auth/messages/logout.dart';
import 'package:pollutant/src/screens/auth/messages/password_changed.dart';
import 'package:pollutant/src/screens/auth/recover_password/screen.dart';
import 'package:pollutant/src/screens/auth/register/screen.dart';
import 'package:pollutant/src/screens/auth/signin/screen.dart';
import 'package:pollutant/src/screens/auth/terms_and_conditions.dart';
import 'package:pollutant/src/screens/auth/terms_of_user.dart';
import 'package:pollutant/src/screens/main/screen.dart';

class AppRoutes {
  static const String rLogin = '/login';
  static const String rRegister = '/register';
  static const String rRecoverPassword = '/recover_password';
  static const String rChangePassword = '/change_password';
  static const String rMsgEmailVerification = '/msgEmailVerification';
  static const String rMsgLogout = '/msgLogout';
  static const String rMsgPasswordChanged = '/msgPasswordChanged';
  static const String rErr404 = '/err404';
  static const String rErrSystem = '/errSystem';
  static const String rTermsAndConditions = '/terms_and_conditions';
  static const String rTermsOfUser = '/terms_of_use';
  static const String rMain = '/';

  static List<GetPage> get pages => [
        GetPage(
          name: rLogin,
          page: () => const SigninScreen(),
        ),
        GetPage(
          name: rTermsAndConditions,
          page: () => const TermsAndConditionsScreen(),
        ),
        GetPage(
          name: rTermsOfUser,
          page: () => const TermsOfUseScreen(),
        ),
        GetPage(
          name: rRegister,
          page: () => const RegisterScreen(),
        ),
        GetPage(
          name: rRecoverPassword,
          page: () => const RecoverPassword(),
        ),
        GetPage(
          name: rChangePassword,
          page: () => const ChangePasswordScreen(),
        ),
        GetPage(
          name: rMsgEmailVerification,
          page: () => const EmailVerificationMessage(),
        ),
        GetPage(
          name: rMsgPasswordChanged,
          page: () => const PasswordChangedMessage(),
        ),
        GetPage(
          name: rMsgLogout,
          page: () => const LogoutMessage(),
        ),
        GetPage(
          name: rMain,
          page: () => const MainScreen(),
        ),
        GetPage(
          name: rErr404,
          page: () => const Error404Message(),
        ),
        GetPage(
          name: rErrSystem,
          page: () => const ErrorSystemMessage(),
        ),
      ];
}
