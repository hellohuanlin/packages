// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'shell_route_with_keys_example.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myShellRouteData,
    ];

RouteBase get $myShellRouteData => ShellRouteData.$route(
      factory: $MyShellRouteDataExtension._fromState,
      navigatorKey: MyShellRouteData.$navigatorKey,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/users',
          factory: $UsersRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':id',
              factory: $UserRouteDataExtension._fromState,
              parentNavigatorKey: UserRouteData.$parentNavigatorKey,
            ),
          ],
        ),
      ],
    );

extension $MyShellRouteDataExtension on MyShellRouteData {
  static MyShellRouteData _fromState(GoRouterState state) =>
      const MyShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $UsersRouteDataExtension on UsersRouteData {
  static UsersRouteData _fromState(GoRouterState state) =>
      const UsersRouteData();

  String get location => GoRouteData.$location(
        '/users',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $UserRouteDataExtension on UserRouteData {
  static UserRouteData _fromState(GoRouterState state) => UserRouteData(
        id: int.parse(state.params['id']!),
      );

  String get location => GoRouteData.$location(
        '/users/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
