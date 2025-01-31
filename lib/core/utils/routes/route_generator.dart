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
          BlocProvider<SplashCubit>(
            create: (_) => sl<SplashCubit>(),
            child: const SplashScreen(),
          ),
        );

      case RouteConstants.routeLoginScreen:
        return _buildRoute(
            RouteConstants.routeLoginScreen,
            BlocProvider<AuthBloc>(
              create: (_) => sl<AuthBloc>(),
              child: const LoginScreen(),
            ));

      case RouteConstants.routeSignUpScreen:
        return _buildRoute(
            RouteConstants.routeSignUpScreen,
            BlocProvider<AuthBloc>(
              create: (_) => sl<AuthBloc>(),
              child: const SignupScreen(),
            ));

      case RouteConstants.routeHomeScreen:
        return _buildRoute(
          RouteConstants.routeHomeScreen,
          const HomeScreen(),
        );

      case RouteConstants.routeWishListScreen:
        return _buildRoute(
          RouteConstants.routeWishListScreen,
          const WishlistScreen(),
        );

      case RouteConstants.routeCartScreen:
        return _buildRoute(
          RouteConstants.routeCartScreen,
          const CartScreen(),
        );

      case RouteConstants.routeAddProductScreen:
        return _buildRoute(
          RouteConstants.routeAddProductScreen,
          const AddCategoriesScreen(),
        );

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
