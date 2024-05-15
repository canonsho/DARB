import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LogInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LogInWidget(),
        ),
        FFRoute(
          name: 'Signin',
          path: '/SignUP',
          builder: (context, params) => const SigninWidget(),
        ),
        FFRoute(
          name: 'Homepage',
          path: '/homepage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Homepage')
              : const NavBarPage(
                  initialPage: 'Homepage',
                  page: HomepageWidget(),
                ),
        ),
        FFRoute(
          name: 'LogIn',
          path: '/logIn',
          builder: (context, params) => const LogInWidget(),
        ),
        FFRoute(
          name: 'EditProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'feedbackPage',
          path: '/feedbackPage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'feedbackPage')
              : const NavBarPage(
                  initialPage: 'feedbackPage',
                  page: FeedbackPageWidget(),
                ),
        ),
        FFRoute(
          name: 'RecoverPasswordPage',
          path: '/recoverPasswordPage',
          builder: (context, params) => const RecoverPasswordPageWidget(),
        ),
        FFRoute(
          name: 'communityPage',
          path: '/communityPage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'communityPage')
              : const NavBarPage(
                  initialPage: 'communityPage',
                  page: CommunityPageWidget(),
                ),
        ),
        FFRoute(
          name: 'ChooseBudget',
          path: '/chooseBudget',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ChooseBudget')
              : const NavBarPage(
                  initialPage: 'ChooseBudget',
                  page: ChooseBudgetWidget(),
                ),
        ),
        FFRoute(
          name: 'CreatePost',
          path: '/createPost',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: CreatePostWidget(),
          ),
        ),
        FFRoute(
          name: 'JeddahEconomy',
          path: '/jeddahEconomy',
          builder: (context, params) => const JeddahEconomyWidget(),
        ),
        FFRoute(
          name: 'ChooseCityEconomy',
          path: '/chooseCityEconomy',
          builder: (context, params) => const ChooseCityEconomyWidget(),
        ),
        FFRoute(
          name: 'ChooseCityStandred',
          path: '/chooseCityStanderd',
          builder: (context, params) => const ChooseCityStandredWidget(),
        ),
        FFRoute(
          name: 'ChooseCityLuxury',
          path: '/chooseCityLuxury',
          builder: (context, params) => const ChooseCityLuxuryWidget(),
        ),
        FFRoute(
          name: 'UsersItinerarySummary',
          path: '/usersItinerarySummary',
          builder: (context, params) => const UsersItinerarySummaryWidget(),
        ),
        FFRoute(
          name: 'map',
          path: '/map',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'map') : const MapWidget(),
        ),
        FFRoute(
          name: 'JeddahStanderd',
          path: '/jeddahStanderd',
          builder: (context, params) => const JeddahStanderdWidget(),
        ),
        FFRoute(
          name: 'JeddahLuxury',
          path: '/jeddahLuxury',
          builder: (context, params) => const JeddahLuxuryWidget(),
        ),
        FFRoute(
          name: 'MakkahEco',
          path: '/makkahEco',
          builder: (context, params) => const MakkahEcoWidget(),
        ),
        FFRoute(
          name: 'MakkahStan',
          path: '/makkahStan',
          builder: (context, params) => const MakkahStanWidget(),
        ),
        FFRoute(
          name: 'MakkahLux',
          path: '/makkahLux',
          builder: (context, params) => const MakkahLuxWidget(),
        ),
        FFRoute(
          name: 'TaifEco',
          path: '/taifEco',
          builder: (context, params) => const TaifEcoWidget(),
        ),
        FFRoute(
          name: 'TaifStanderd',
          path: '/taifStanderd',
          builder: (context, params) => const TaifStanderdWidget(),
        ),
        FFRoute(
          name: 'TaifLuxury',
          path: '/taifLuxury',
          builder: (context, params) => const TaifLuxuryWidget(),
        ),
        FFRoute(
          name: 'MadinaEconomy',
          path: '/madinaEconomy',
          builder: (context, params) => const MadinaEconomyWidget(),
        ),
        FFRoute(
          name: 'MadinaStandrerd',
          path: '/madinaStandrerd',
          builder: (context, params) => const MadinaStandrerdWidget(),
        ),
        FFRoute(
          name: 'MadinaLuxury',
          path: '/madinaLuxury',
          builder: (context, params) => const MadinaLuxuryWidget(),
        ),
        FFRoute(
          name: 'TabukEconomy',
          path: '/tabukEconomy',
          builder: (context, params) => const TabukEconomyWidget(),
        ),
        FFRoute(
          name: 'TabukStanderd',
          path: '/tabukStanderd',
          builder: (context, params) => const TabukStanderdWidget(),
        ),
        FFRoute(
          name: 'TabukLuxury',
          path: '/tabukLuxury',
          builder: (context, params) => const TabukLuxuryWidget(),
        ),
        FFRoute(
          name: 'DammamEconomy',
          path: '/dammamEconomy',
          builder: (context, params) => const DammamEconomyWidget(),
        ),
        FFRoute(
          name: 'DammamStanderd',
          path: '/dammamStanderd',
          builder: (context, params) => const DammamStanderdWidget(),
        ),
        FFRoute(
          name: 'DammamLuxury',
          path: '/dammamLuxury',
          builder: (context, params) => const DammamLuxuryWidget(),
        ),
        FFRoute(
          name: 'RiyadhEconomy',
          path: '/riyadhEconomy',
          builder: (context, params) => const RiyadhEconomyWidget(),
        ),
        FFRoute(
          name: 'RiyadhStanderd',
          path: '/riyadhStanderd',
          builder: (context, params) => const RiyadhStanderdWidget(),
        ),
        FFRoute(
          name: 'RiyadhLuxury',
          path: '/riyadhLuxury',
          builder: (context, params) => const RiyadhLuxuryWidget(),
        ),
        FFRoute(
          name: 'AbhaEconomy',
          path: '/abhaEconomy',
          builder: (context, params) => const AbhaEconomyWidget(),
        ),
        FFRoute(
          name: 'AbhaStanderd',
          path: '/abhaStanderd',
          builder: (context, params) => const AbhaStanderdWidget(),
        ),
        FFRoute(
          name: 'AbhaLuxury',
          path: '/abhaLuxury',
          builder: (context, params) => const AbhaLuxuryWidget(),
        ),
        FFRoute(
          name: 'searchPage',
          path: '/searchPage',
          builder: (context, params) => const SearchPageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/logIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
