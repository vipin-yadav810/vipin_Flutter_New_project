import 'package:get/get.dart';
import 'package:vipin_final/core/route_constant.dart';
import 'package:vipin_final/feature/Details/binding/detail_binding.dart';
import 'package:vipin_final/feature/Details/view/detail_view.dart';
import 'package:vipin_final/feature/attendence/binding/att_binding.dart';
import 'package:vipin_final/feature/attendence/view/att_view.dart';
import 'package:vipin_final/feature/bottomnav/binding/fetchup_binding.dart';
import 'package:vipin_final/feature/bottomnav/view/fetchup_page.dart';
import 'package:vipin_final/feature/home/binding/home_binding.dart';
import 'package:vipin_final/feature/home/view/home_view.dart';
import 'package:vipin_final/feature/home2/binding/home2_binding.dart';
import 'package:vipin_final/feature/home2/view/home2_page.dart';
import 'package:vipin_final/feature/login/binding/login_binding.dart';
import 'package:vipin_final/feature/login/view/login_view.dart';
import 'package:vipin_final/feature/onboarding/binding/onboarding_binding.dart';
import 'package:vipin_final/feature/onboarding/view/onboarding_view.dart';
import 'package:vipin_final/feature/profile/binding/profile_binding.dart';
import 'package:vipin_final/feature/profile/view/profile_page.dart';
import 'package:vipin_final/feature/setting/binding/setting_binding.dart';
import 'package:vipin_final/feature/setting/view/setting_view.dart';
import 'package:vipin_final/feature/signup/binding/signup_binding.dart';
import 'package:vipin_final/feature/signup/view/signup_view.dart';
import 'package:vipin_final/feature/splash/binding/splash_binding.dart';
import 'package:vipin_final/feature/splash/view/splash_view.dart';
import 'package:vipin_final/feature/verify/binding/verify_binding.dart';
import 'package:vipin_final/feature/verify/view/verify_view.dart';

List<GetPage> getPages = [
GetPage(name: RouteConstant.splash,
page:()=>SplashView(),
binding: SplashBinding(),
),

  GetPage(name: RouteConstant.home,
    page:()=>HomeView(),
    binding: HomeBinding(),
  ),

  GetPage(name: RouteConstant.login,
    page:()=>LoginView(),
    binding: LoginBinding(),
  ),
  GetPage(name: RouteConstant.onboarding,
    page:()=>OnboardingView(),
    binding:OnboardingBinding(),
  ),
  GetPage(name: RouteConstant.signup,
    page:()=>SignupView(),
    binding:SignupBinding(),
  ),

  GetPage(name: RouteConstant.verify,
    page:()=>VerifyView(),
    binding:VerifyBinding(),
  ),

  GetPage(name: RouteConstant.detail,
    page:()=>DetailView(),
    binding:DetailBinding(),
  ),

  GetPage(name: RouteConstant.nav,
    page:()=>FetchupView(),
    binding:FetchupBinding(),
  ),
  GetPage(name: RouteConstant.att,
    page:()=>AttView(),
    binding:AttBinding(),
  ),

  GetPage(name: RouteConstant.profile,
    page:()=>ProfilePage(),
    binding:ProfileBinding(),
  ),

  GetPage(name: RouteConstant.setting,
    page:()=>SettingView(),
    binding:SettingBinding(),
  ),

  GetPage(name: RouteConstant.home2,
    page:()=>Home2Page(),
    binding:Home2Bindings(),
  ),




];