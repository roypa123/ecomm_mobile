part of 'router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route generateRoute(
    RouteSettings settings,
  ) {
    // var args = settings.arguments; //* ARG PARAMS

    switch (settings.name) {
      case RouteConstants.routeInitial:
        return _buildRoute(
            RouteConstants.routeInitial,
            BlocProvider<AuthBloc>(
              create: (_) => sl<AuthBloc>(),
              child: const LoginScreen(),
            ));

      case RouteConstants.routeLoginScreen:
        return _buildRoute(
            RouteConstants.routeLoginScreen,
            BlocProvider<AuthBloc>(
              create: (_) => sl<AuthBloc>(),
              child: const LoginScreen(),
            ));

      case RouteConstants.routeSignUp:
        return _buildRoute(
            RouteConstants.routeSignUp,
            BlocProvider<AuthBloc>(
              create: (_) => sl<AuthBloc>(),
              child: const SignupScreen(),
            ));

      case RouteConstants.routeForgotPassword:
        return _buildRoute(
            RouteConstants.routeForgotPassword,
            BlocProvider<AuthBloc>(
              create: (_) => sl<AuthBloc>(),
              child: const SignupScreen(),
            ));

      case RouteConstants.routeMainScreen:
        return _buildRoute(
            RouteConstants.routeMainScreen,
            BlocProvider<MainBloc>(
                create: (_) => sl<MainBloc>(), child: const MainScreen()));

      case RouteConstants.routeAboutTori:
        return _buildRoute(
            RouteConstants.routeAboutTori, const AboutToriScreen());

      case RouteConstants.routeTerms:
        return _buildRoute(
            RouteConstants.routeTerms, const TermsAndConditionsScreen());

      case RouteConstants.routePrivacy:
        return _buildRoute(
            RouteConstants.routePrivacy, const PrivacyPolicyScreen());

      default:
        return _buildRoute(RouteConstants.routeEmpty, const EmptyScreen());
    }
  }
}

Route _buildRoute(String route, Widget widget,
    {bool enableFullScreen = false}) {
  return CupertinoPageRoute(
      fullscreenDialog: enableFullScreen,
      settings: RouteSettings(name: route),
      builder: (_) => widget);
}
