import 'package:evenly_app/core/routes/pages_route_name.dart';
import 'package:evenly_app/modules/createEvent/create_new_event_view.dart';
import 'package:evenly_app/modules/forgetPassword/forget_password_view.dart';
import 'package:evenly_app/modules/layout/layout_view.dart';
import 'package:evenly_app/modules/onBoarding/on_boarding_view.dart';
import 'package:evenly_app/modules/signIn/sign_in_view.dart';
import 'package:evenly_app/modules/signUp/sign_up_view.dart';
import 'package:evenly_app/modules/splash/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteName.initial:
        {
          return MaterialPageRoute(
            builder: (context) => const SplashView(),
            settings: settings,
          );
        }

      case PagesRouteName.onBoarding:
        {
          return MaterialPageRoute(
            builder: (context) => const OnBoardingView(),
            settings: settings,
          );
        }

      case PagesRouteName.signIn:
        {
          return MaterialPageRoute(
            builder: (context) => const SignInView(),
            settings: settings,
          );
        }

      case PagesRouteName.signUp:
        {
          return MaterialPageRoute(
            builder: (context) => const SignUpView(),
            settings: settings,
          );
        }

      case PagesRouteName.forgetPassword:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgetPasswordView(),
            settings: settings,
          );
        }

      case PagesRouteName.layout:
        {
          return MaterialPageRoute(
            builder: (context) => const LayoutView(),
            settings: settings,
          );
        }
      case PagesRouteName.createNewEvent:
        {
          return MaterialPageRoute(
            builder: (context) => const CreateNewEventView(),
            settings: settings,
          );
        }
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const SplashView(),
            settings: settings,
          );
        }
    }
  }
}
