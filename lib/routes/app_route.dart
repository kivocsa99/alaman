import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/domain/marks/model/marks.model.dart';
import 'package:alaman/domain/scholarshiptypes/model/scholarshiptypes.model.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/screens/beneficiary.profile_screen.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
import 'package:alaman/presentation/screens/grants_screen.dart';
import 'package:alaman/presentation/screens/home_screen.dart';
import 'package:alaman/presentation/screens/language_screen.dart';
import 'package:alaman/presentation/screens/location.checker_screen.dart';
import 'package:alaman/presentation/screens/location_screen.dart';
import 'package:alaman/presentation/screens/login_screen.dart';
import 'package:alaman/presentation/screens/main_screen.dart';
import 'package:alaman/presentation/screens/marks_screen.dart';
import 'package:alaman/presentation/screens/meetings_history_screen.dart';
import 'package:alaman/presentation/screens/onboarding_screen.dart';
import 'package:alaman/presentation/screens/payment.details_screen.dart';
import 'package:alaman/presentation/screens/payment.history_screen.dart';
import 'package:alaman/presentation/screens/payment_screen.dart';
import 'package:alaman/presentation/screens/profile_details_screen.dart';
import 'package:alaman/presentation/screens/profile_screen.dart';
import 'package:alaman/presentation/screens/register_screen.dart';
import 'package:alaman/presentation/screens/request_screen.dart';
import 'package:alaman/presentation/screens/set.avatar_screen.dart';
import 'package:alaman/presentation/screens/splash_screen.dart';
import 'package:alaman/presentation/screens/sponser_screen.dart';
import 'package:alaman/presentation/screens/your.grants_screen.dart';
import 'package:alaman/presentation/screens/your_beneficiaries_sceen.dart';
import 'package:alaman/routes/auth_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: false, page: OnBoardingRoute.page, guards: [AuthGuard()]),
              AutoRoute(
            initial: true, page: SplashRoute.page, ),
        AutoRoute(
            page: RegisterRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: LoginRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: MarksHistoryRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: YourBeneficiariesRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: BeneficiaryProfileRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: ProfileDetailsRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
             AutoRoute(
            page: MeetingHistoryRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: PaymentRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: LanguageRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: FilteredRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: SposnerRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: LocationCheckerRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: PaymentHistoryRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: PaymentDetailRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: YourGrantsRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: SetAvatarRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: MainRoute.page,
            guards: [MainRouteGuard()],
            children: [
              AutoRoute(
                initial: true,
                page: HomeRoute.page,
              ),
              AutoRoute(
                page: GrantsRoute.page,
              ),
              AutoRoute(
                page: LocationRoute.page,
              ),
              AutoRoute(
                page: ProfileRoute.page,
              )
            ],
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            ))
      ];
}
