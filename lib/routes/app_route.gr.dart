// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BeneficiaryProfileRoute.name: (routeData) {
      final args = routeData.argsAs<BeneficiaryProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BeneficiaryProfileScreen(
          key: args.key,
          index: args.index,
          profileId: args.profileId,
        ),
      );
    },
    FilteredRoute.name: (routeData) {
      final args = routeData.argsAs<FilteredRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilteredScreen(
          genderId: args.genderId,
          cityId: args.cityId,
          educationalYearId: args.educationalYearId,
          age: args.age,
          scholarshipTypeId: args.scholarshipTypeId,
          isCorporate: args.isCorporate,
          donationAmount: args.donationAmount,
          endAmount: args.endAmount,
          sponsershipEnd: args.sponsershipEnd,
          sponsershipSart: args.sponsershipSart,
          key: args.key,
        ),
      );
    },
    GrantsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GrantsScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LanguageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LanguageScreen(),
      );
    },
    LocationCheckerRoute.name: (routeData) {
      final args = routeData.argsAs<LocationCheckerRouteArgs>(
          orElse: () => const LocationCheckerRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LocationCheckerScreen(
          key: args.key,
          paymentMethod: args.paymentMethod,
          beneficiaries: args.beneficiaries,
          startDate: args.startDate,
          endDate: args.endDate,
          donationFrequencyId: args.donationFrequencyId,
          amount: args.amount,
          donationTypeId: args.donationTypeId,
          recurring: args.recurring,
        ),
      );
    },
    LocationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocationScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MarksHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<MarksHistoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MarksHistoryScreen(
          key: args.key,
          marks: args.marks,
        ),
      );
    },
    MeetingHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<MeetingHistoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MeetingHistoryScreen(
          key: args.key,
          marks: args.marks,
        ),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingScreen(),
      );
    },
    PaymentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentDetailScreen(
          key: args.key,
          history: args.history,
        ),
      );
    },
    PaymentHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentHistoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentHistoryScreen(
          key: args.key,
          donationHistory: args.donationHistory,
        ),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>(
          orElse: () => const PaymentRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentScreen(
          key: args.key,
          baseurl: args.baseurl,
        ),
      );
    },
    ProfileDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileDetailsScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    RequestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RequestScreen(),
      );
    },
    SetAvatarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SetAvatarScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    SposnerRoute.name: (routeData) {
      final args = routeData.argsAs<SposnerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SposnerScreen(
          key: args.key,
          profileById: args.profileById,
          isdonor: args.isdonor,
        ),
      );
    },
    YourBeneficiariesRoute.name: (routeData) {
      final args = routeData.argsAs<YourBeneficiariesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: YourBeneficiariesScreen(
          key: args.key,
          beneficiary: args.beneficiary,
        ),
      );
    },
    YourGrantsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YourGrantsScreen(),
      );
    },
  };
}

/// generated route for
/// [BeneficiaryProfileScreen]
class BeneficiaryProfileRoute
    extends PageRouteInfo<BeneficiaryProfileRouteArgs> {
  BeneficiaryProfileRoute({
    Key? key,
    required int? index,
    required String? profileId,
    List<PageRouteInfo>? children,
  }) : super(
          BeneficiaryProfileRoute.name,
          args: BeneficiaryProfileRouteArgs(
            key: key,
            index: index,
            profileId: profileId,
          ),
          initialChildren: children,
        );

  static const String name = 'BeneficiaryProfileRoute';

  static const PageInfo<BeneficiaryProfileRouteArgs> page =
      PageInfo<BeneficiaryProfileRouteArgs>(name);
}

class BeneficiaryProfileRouteArgs {
  const BeneficiaryProfileRouteArgs({
    this.key,
    required this.index,
    required this.profileId,
  });

  final Key? key;

  final int? index;

  final String? profileId;

  @override
  String toString() {
    return 'BeneficiaryProfileRouteArgs{key: $key, index: $index, profileId: $profileId}';
  }
}

/// generated route for
/// [FilteredScreen]
class FilteredRoute extends PageRouteInfo<FilteredRouteArgs> {
  FilteredRoute({
    required int genderId,
    required int cityId,
    required int educationalYearId,
    required String age,
    required int scholarshipTypeId,
    bool? isCorporate,
    int? donationAmount,
    int? endAmount,
    int? sponsershipEnd,
    int? sponsershipSart,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          FilteredRoute.name,
          args: FilteredRouteArgs(
            genderId: genderId,
            cityId: cityId,
            educationalYearId: educationalYearId,
            age: age,
            scholarshipTypeId: scholarshipTypeId,
            isCorporate: isCorporate,
            donationAmount: donationAmount,
            endAmount: endAmount,
            sponsershipEnd: sponsershipEnd,
            sponsershipSart: sponsershipSart,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FilteredRoute';

  static const PageInfo<FilteredRouteArgs> page =
      PageInfo<FilteredRouteArgs>(name);
}

class FilteredRouteArgs {
  const FilteredRouteArgs({
    required this.genderId,
    required this.cityId,
    required this.educationalYearId,
    required this.age,
    required this.scholarshipTypeId,
    this.isCorporate,
    this.donationAmount,
    this.endAmount,
    this.sponsershipEnd,
    this.sponsershipSart,
    this.key,
  });

  final int genderId;

  final int cityId;

  final int educationalYearId;

  final String age;

  final int scholarshipTypeId;

  final bool? isCorporate;

  final int? donationAmount;

  final int? endAmount;

  final int? sponsershipEnd;

  final int? sponsershipSart;

  final Key? key;

  @override
  String toString() {
    return 'FilteredRouteArgs{genderId: $genderId, cityId: $cityId, educationalYearId: $educationalYearId, age: $age, scholarshipTypeId: $scholarshipTypeId, isCorporate: $isCorporate, donationAmount: $donationAmount, endAmount: $endAmount, sponsershipEnd: $sponsershipEnd, sponsershipSart: $sponsershipSart, key: $key}';
  }
}

/// generated route for
/// [GrantsScreen]
class GrantsRoute extends PageRouteInfo<void> {
  const GrantsRoute({List<PageRouteInfo>? children})
      : super(
          GrantsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GrantsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LanguageScreen]
class LanguageRoute extends PageRouteInfo<void> {
  const LanguageRoute({List<PageRouteInfo>? children})
      : super(
          LanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LocationCheckerScreen]
class LocationCheckerRoute extends PageRouteInfo<LocationCheckerRouteArgs> {
  LocationCheckerRoute({
    Key? key,
    int? paymentMethod,
    List<int>? beneficiaries,
    String? startDate,
    String? endDate,
    int? donationFrequencyId,
    double? amount,
    int? donationTypeId,
    int? recurring,
    List<PageRouteInfo>? children,
  }) : super(
          LocationCheckerRoute.name,
          args: LocationCheckerRouteArgs(
            key: key,
            paymentMethod: paymentMethod,
            beneficiaries: beneficiaries,
            startDate: startDate,
            endDate: endDate,
            donationFrequencyId: donationFrequencyId,
            amount: amount,
            donationTypeId: donationTypeId,
            recurring: recurring,
          ),
          initialChildren: children,
        );

  static const String name = 'LocationCheckerRoute';

  static const PageInfo<LocationCheckerRouteArgs> page =
      PageInfo<LocationCheckerRouteArgs>(name);
}

class LocationCheckerRouteArgs {
  const LocationCheckerRouteArgs({
    this.key,
    this.paymentMethod,
    this.beneficiaries,
    this.startDate,
    this.endDate,
    this.donationFrequencyId,
    this.amount,
    this.donationTypeId,
    this.recurring,
  });

  final Key? key;

  final int? paymentMethod;

  final List<int>? beneficiaries;

  final String? startDate;

  final String? endDate;

  final int? donationFrequencyId;

  final double? amount;

  final int? donationTypeId;

  final int? recurring;

  @override
  String toString() {
    return 'LocationCheckerRouteArgs{key: $key, paymentMethod: $paymentMethod, beneficiaries: $beneficiaries, startDate: $startDate, endDate: $endDate, donationFrequencyId: $donationFrequencyId, amount: $amount, donationTypeId: $donationTypeId, recurring: $recurring}';
  }
}

/// generated route for
/// [LocationScreen]
class LocationRoute extends PageRouteInfo<void> {
  const LocationRoute({List<PageRouteInfo>? children})
      : super(
          LocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MarksHistoryScreen]
class MarksHistoryRoute extends PageRouteInfo<MarksHistoryRouteArgs> {
  MarksHistoryRoute({
    Key? key,
    required List<MarksModel> marks,
    List<PageRouteInfo>? children,
  }) : super(
          MarksHistoryRoute.name,
          args: MarksHistoryRouteArgs(
            key: key,
            marks: marks,
          ),
          initialChildren: children,
        );

  static const String name = 'MarksHistoryRoute';

  static const PageInfo<MarksHistoryRouteArgs> page =
      PageInfo<MarksHistoryRouteArgs>(name);
}

class MarksHistoryRouteArgs {
  const MarksHistoryRouteArgs({
    this.key,
    required this.marks,
  });

  final Key? key;

  final List<MarksModel> marks;

  @override
  String toString() {
    return 'MarksHistoryRouteArgs{key: $key, marks: $marks}';
  }
}

/// generated route for
/// [MeetingHistoryScreen]
class MeetingHistoryRoute extends PageRouteInfo<MeetingHistoryRouteArgs> {
  MeetingHistoryRoute({
    Key? key,
    required List<MarksModel> marks,
    List<PageRouteInfo>? children,
  }) : super(
          MeetingHistoryRoute.name,
          args: MeetingHistoryRouteArgs(
            key: key,
            marks: marks,
          ),
          initialChildren: children,
        );

  static const String name = 'MeetingHistoryRoute';

  static const PageInfo<MeetingHistoryRouteArgs> page =
      PageInfo<MeetingHistoryRouteArgs>(name);
}

class MeetingHistoryRouteArgs {
  const MeetingHistoryRouteArgs({
    this.key,
    required this.marks,
  });

  final Key? key;

  final List<MarksModel> marks;

  @override
  String toString() {
    return 'MeetingHistoryRouteArgs{key: $key, marks: $marks}';
  }
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentDetailScreen]
class PaymentDetailRoute extends PageRouteInfo<PaymentDetailRouteArgs> {
  PaymentDetailRoute({
    Key? key,
    required DonorDonation history,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentDetailRoute.name,
          args: PaymentDetailRouteArgs(
            key: key,
            history: history,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentDetailRoute';

  static const PageInfo<PaymentDetailRouteArgs> page =
      PageInfo<PaymentDetailRouteArgs>(name);
}

class PaymentDetailRouteArgs {
  const PaymentDetailRouteArgs({
    this.key,
    required this.history,
  });

  final Key? key;

  final DonorDonation history;

  @override
  String toString() {
    return 'PaymentDetailRouteArgs{key: $key, history: $history}';
  }
}

/// generated route for
/// [PaymentHistoryScreen]
class PaymentHistoryRoute extends PageRouteInfo<PaymentHistoryRouteArgs> {
  PaymentHistoryRoute({
    Key? key,
    required List<DonorDonation> donationHistory,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentHistoryRoute.name,
          args: PaymentHistoryRouteArgs(
            key: key,
            donationHistory: donationHistory,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentHistoryRoute';

  static const PageInfo<PaymentHistoryRouteArgs> page =
      PageInfo<PaymentHistoryRouteArgs>(name);
}

class PaymentHistoryRouteArgs {
  const PaymentHistoryRouteArgs({
    this.key,
    required this.donationHistory,
  });

  final Key? key;

  final List<DonorDonation> donationHistory;

  @override
  String toString() {
    return 'PaymentHistoryRouteArgs{key: $key, donationHistory: $donationHistory}';
  }
}

/// generated route for
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    String? baseurl,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            baseurl: baseurl,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const PageInfo<PaymentRouteArgs> page =
      PageInfo<PaymentRouteArgs>(name);
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    this.baseurl,
  });

  final Key? key;

  final String? baseurl;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, baseurl: $baseurl}';
  }
}

/// generated route for
/// [ProfileDetailsScreen]
class ProfileDetailsRoute extends PageRouteInfo<void> {
  const ProfileDetailsRoute({List<PageRouteInfo>? children})
      : super(
          ProfileDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RequestScreen]
class RequestRoute extends PageRouteInfo<void> {
  const RequestRoute({List<PageRouteInfo>? children})
      : super(
          RequestRoute.name,
          initialChildren: children,
        );

  static const String name = 'RequestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SetAvatarScreen]
class SetAvatarRoute extends PageRouteInfo<void> {
  const SetAvatarRoute({List<PageRouteInfo>? children})
      : super(
          SetAvatarRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetAvatarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SposnerScreen]
class SposnerRoute extends PageRouteInfo<SposnerRouteArgs> {
  SposnerRoute({
    Key? key,
    required String profileById,
    required bool isdonor,
    List<PageRouteInfo>? children,
  }) : super(
          SposnerRoute.name,
          args: SposnerRouteArgs(
            key: key,
            profileById: profileById,
            isdonor: isdonor,
          ),
          initialChildren: children,
        );

  static const String name = 'SposnerRoute';

  static const PageInfo<SposnerRouteArgs> page =
      PageInfo<SposnerRouteArgs>(name);
}

class SposnerRouteArgs {
  const SposnerRouteArgs({
    this.key,
    required this.profileById,
    required this.isdonor,
  });

  final Key? key;

  final String profileById;

  final bool isdonor;

  @override
  String toString() {
    return 'SposnerRouteArgs{key: $key, profileById: $profileById, isdonor: $isdonor}';
  }
}

/// generated route for
/// [YourBeneficiariesScreen]
class YourBeneficiariesRoute extends PageRouteInfo<YourBeneficiariesRouteArgs> {
  YourBeneficiariesRoute({
    Key? key,
    required List<BeneficiaryModel> beneficiary,
    List<PageRouteInfo>? children,
  }) : super(
          YourBeneficiariesRoute.name,
          args: YourBeneficiariesRouteArgs(
            key: key,
            beneficiary: beneficiary,
          ),
          initialChildren: children,
        );

  static const String name = 'YourBeneficiariesRoute';

  static const PageInfo<YourBeneficiariesRouteArgs> page =
      PageInfo<YourBeneficiariesRouteArgs>(name);
}

class YourBeneficiariesRouteArgs {
  const YourBeneficiariesRouteArgs({
    this.key,
    required this.beneficiary,
  });

  final Key? key;

  final List<BeneficiaryModel> beneficiary;

  @override
  String toString() {
    return 'YourBeneficiariesRouteArgs{key: $key, beneficiary: $beneficiary}';
  }
}

/// generated route for
/// [YourGrantsScreen]
class YourGrantsRoute extends PageRouteInfo<void> {
  const YourGrantsRoute({List<PageRouteInfo>? children})
      : super(
          YourGrantsRoute.name,
          initialChildren: children,
        );

  static const String name = 'YourGrantsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
