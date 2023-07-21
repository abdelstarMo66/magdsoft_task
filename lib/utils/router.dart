import 'package:flutter/material.dart';
import 'package:task/presentation/screens/profile_view.dart';
import 'package:task/presentation/screens/widgets/add_card.dart';
import 'package:task/presentation/screens/widgets/address_saved_screen.dart';
import 'package:task/presentation/screens/widgets/connect_to_support.dart';
import 'package:task/presentation/screens/widgets/coupons.dart';
import 'package:task/presentation/screens/widgets/edit_profile.dart';
import 'package:task/presentation/screens/widgets/payment.dart';
import 'package:task/presentation/screens/widgets/settings_screen.dart';
import 'package:task/presentation/screens/widgets/support_screen.dart';
import 'package:task/presentation/screens/widgets/terms_of_use.dart';
import '../presentation/screens/widgets/language_settings.dart';
import '../presentation/screens/widgets/list_complaints_submit.dart';
import '../presentation/screens/widgets/more_questions.dart';
import '../presentation/screens/widgets/privacy_policy.dart';
import '../presentation/screens/widgets/value_added_tax_certificate.dart';
import 'routes.dart';

class RouterGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.addressSavedScreen:
        return MaterialPageRoute(builder: (_) => const AddressSavedScreen());
      case Routes.supportScreen:
        return MaterialPageRoute(builder: (_) => const SupportScreen());
      case Routes.connectToSupportScreen:
        return MaterialPageRoute(builder: (_) => const ConnectToSupport());
      case Routes.moreQuestionsScreen:
        return MaterialPageRoute(builder: (_) => const MoreQuestionsScreen());
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.listComplaintsSubmitScreen:
        return MaterialPageRoute(
            builder: (_) => const ListComplaintsSubmitScreen());
      case Routes.termsOfUseScreen:
        return MaterialPageRoute(builder: (_) => const TermsOfUseScreen());
      case Routes.valueAddedTaxCertificateScreen:
        return MaterialPageRoute(
            builder: (_) => const ValueAddedTaxCertificateScreen());
      case Routes.privacyPolicyScreen:
        return MaterialPageRoute(
            builder: (_) => const PrivacyPolicyScreen());
      case Routes.languageSettingsScreen:
        return MaterialPageRoute(
            builder: (_) => const LanguageSettingsScreen());
      case Routes.editProfileScreen:
        return MaterialPageRoute(
            builder: (_) => const EditProfileScreen());
      case Routes.couponsScreen:
        return MaterialPageRoute(
            builder: (_) => const CouponsScreen());
      case Routes.paymentScreen:
        return MaterialPageRoute(
            builder: (_) => const PaymentScreen());
      case Routes.addCardScreen:
        return MaterialPageRoute(
            builder: (_) => const AddCardScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Not Found Route"),
        ),
        body: const Center(
          child: Text("Not Found Route"),
        ),
      ),
    );
  }
}
