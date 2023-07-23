import 'package:flutter/material.dart';
import 'package:task/presentation/screens/profile_view/profile_view.dart';
import 'package:task/presentation/screens/profile_view/views/address_saved_screen.dart';
import 'package:task/presentation/screens/talapat_view/talapat_view.dart';
import 'package:task/presentation/screens/talapat_view/views/reorder.dart';
import '../presentation/screens/profile_view/views/add_card.dart';
import '../presentation/screens/profile_view/views/connect_to_support.dart';
import '../presentation/screens/profile_view/views/coupons.dart';
import '../presentation/screens/profile_view/views/edit_profile.dart';
import '../presentation/screens/profile_view/views/language_settings.dart';
import '../presentation/screens/profile_view/views/list_complaints_submit.dart';
import '../presentation/screens/profile_view/views/more_questions.dart';
import '../presentation/screens/profile_view/views/payment.dart';
import '../presentation/screens/profile_view/views/privacy_policy.dart';
import '../presentation/screens/profile_view/views/settings_screen.dart';
import '../presentation/screens/profile_view/views/support_screen.dart';
import '../presentation/screens/profile_view/views/terms_of_use.dart';
import '../presentation/screens/profile_view/views/value_added_tax_certificate.dart';
import '../presentation/screens/talapat_view/views/reorder_details.dart';
import 'routes.dart';

class RouterGenerator {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Profile Router
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
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen());
      case Routes.languageSettingsScreen:
        return MaterialPageRoute(
            builder: (_) => const LanguageSettingsScreen());
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case Routes.couponsScreen:
        return MaterialPageRoute(builder: (_) => const CouponsScreen());
      case Routes.paymentScreen:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case Routes.addCardScreen:
        return MaterialPageRoute(builder: (_) => const AddCardScreen());

      ///////////////////////////////////////////////////

      // Talapat Router
      case Routes.talapatScreen:
        return MaterialPageRoute(builder: (_) => const TalapatScreen());
      case Routes.reorderScreen:
        return MaterialPageRoute(builder: (_) => const ReorderScreen());
      case Routes.reorderDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ReorderDetailsScreen());

      default:
        return null;
    }
  }
}
