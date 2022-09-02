import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/onboarding/views/accountverify_view.dart';
import 'package:my_dear_app/app/modules/onboarding/views/forgotpassword_view.dart';
import 'package:my_dear_app/app/modules/onboarding/views/newpassword_view.dart';
import 'package:my_dear_app/app/modules/onboarding/views/policy_view.dart';
import 'package:my_dear_app/app/modules/onboarding/views/profile_view.dart';
import 'package:my_dear_app/app/modules/onboarding/views/signin_view.dart';
import 'package:my_dear_app/app/modules/onboarding/views/signup_view.dart';
import 'package:my_dear_app/app/modules/reports/bindings/reports_binding.dart';
import 'package:my_dear_app/app/modules/reports/views/logtime_view.dart';

import '../modules/currentuser/bindings/currentuser_binding.dart';
import '../modules/currentuser/views/currentuser_view.dart';
import '../modules/currentuser/views/editprofile_view.dart';
import '../modules/familyandfriends/bindings/familyandfriends_binding.dart';
import '../modules/familyandfriends/views/addfriends_view.dart';
import '../modules/familyandfriends/views/familyandfriends_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/alertmydear_view.dart';
import '../modules/home/views/alertstop_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/notification_view.dart';
import '../modules/medications/bindings/medications_binding.dart';
import '../modules/medications/views/addmedication_view.dart';
import '../modules/medications/views/editmedication_view.dart';
import '../modules/medications/views/medications_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/splash_view.dart';
import '../modules/reminders/bindings/reminders_binding.dart';
import '../modules/reminders/views/addreminder_view.dart';
import '../modules/reminders/views/editreminder_view.dart';
import '../modules/reminders/views/reminderdetails_view.dart';
import '../modules/reminders/views/reminders_view.dart';
import '../modules/reports/views/reports_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/alerthistory_view.dart';
import '../modules/settings/views/bloodglucosetarget_view.dart';
import '../modules/settings/views/changepassword_view.dart';
import '../modules/settings/views/faqs_view.dart';
import '../modules/settings/views/managedevices_view.dart';
import '../modules/settings/views/privacypolicy_view.dart';
import '../modules/settings/views/searchdevices_view.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/settings/views/termsconditions_view.dart';

// ignore_for_file: constant_identifier_names, prefer_const_constructors

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignUpView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.POLICY,
      page: () => PolicyView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => ForgotpasswordView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTVERIFY,
      page: () => AccountverifyView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.NEWPASSWORD,
      page: () => NewpasswordView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      //binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.ALERTMYDEAR,
      page: () => AlertmydearView(),
      //binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.ALERTSTOP,
      page: () => AlertstopView(),
      //binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.MEDICATIONS,
      page: () => const MedicationsView(),
      binding: MedicationsBinding(),
    ),
    GetPage(
      name: _Paths.ADDMEDICATIONS,
      page: () => const AddmedicationView(),
      //binding: MedicationsBinding(),
    ),
    GetPage(
      name: _Paths.EDITMEDICATIONS,
      page: () => const EditmedicationView(),
      //binding: MedicationsBinding(),
    ),
    GetPage(
      name: _Paths.FAMILYANDFRIENDS,
      page: () => const FamilyandfriendsView(),
      binding: FamilyandfriendsBinding(),
    ),
    GetPage(
      name: _Paths.ADDFRIENDS,
      page: () => const AddfriendsView(),
    ),
    GetPage(
      name: _Paths.CURRENTUSER,
      page: () => const CurrentuserView(),
      binding: CurrentuserBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditprofileView(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACYANDPOLICY,
      page: () => PrivacypolicyView(),
    ),
    GetPage(
      name: _Paths.TERMSANDCONDITIONS,
      page: () => TermsconditionsView(),
    ),
    GetPage(
      name: _Paths.CHANGEPASSWORD,
      page: () => ChangepasswordView(),
    ),
    GetPage(
      name: _Paths.FAQS,
      page: () => FaqsView(),
    ),
    GetPage(
      name: _Paths.REMINDERS,
      page: () => const RemindersView(),
      binding: RemindersBinding(),
    ),
    GetPage(
      name: _Paths.ADDREMINDERS,
      page: () => AddreminderView(),
    ),
    GetPage(
      name: _Paths.EDITREMINDERS,
      page: () => EditreminderView(),
    ),
    GetPage(
      name: _Paths.REMINDERDETAILS,
      page: () => ReminderdetailsView(),
    ),
    GetPage(
      name: _Paths.MANAGEDEVICES,
      page: () => ManagedevicesView(),
    ),
    GetPage(
      name: _Paths.ALERTHISTORY,
      page: () => AlerthistoryView(),
    ),
    GetPage(
      name: _Paths.BLOODGLUCOSETARGET,
      page: () => BloodglucosetargetView(),
    ),
    GetPage(
      name: _Paths.SEARCHDEVICES,
      page: () => SearchdevicesView(),
      binding: ReportsBinding(),
    ),
    GetPage(
      name: _Paths.REPORTS,
      page: () => ReportsView(),
      binding: ReportsBinding(),
    ),
    GetPage(
      name: _Paths.LOGTIME,
      page: () => LogtimeView(),
      //binding: ReportsBinding(),
    ),
  ];
}
