// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$logOutHash() => r'a916ab2e6b86d2d74a34117879a66f78993e1822';

/// See also [logOut].
@ProviderFor(logOut)
final logOutProvider = AutoDisposeFutureProvider<void>.internal(
  logOut,
  name: r'logOutProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$logOutHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LogOutRef = AutoDisposeFutureProviderRef<void>;
String _$checkSocialHash() => r'14f681e5b6b0a6a211d6ce76081e3d8d4b35e15c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [checkSocial].
@ProviderFor(checkSocial)
const checkSocialProvider = CheckSocialFamily();

/// See also [checkSocial].
class CheckSocialFamily
    extends Family<AsyncValue<Either<ApiFailures, String?>>> {
  /// See also [checkSocial].
  const CheckSocialFamily();

  /// See also [checkSocial].
  CheckSocialProvider call({
    required String socialId,
    String? appleToken,
    String? googleToken,
  }) {
    return CheckSocialProvider(
      socialId: socialId,
      appleToken: appleToken,
      googleToken: googleToken,
    );
  }

  @override
  CheckSocialProvider getProviderOverride(
    covariant CheckSocialProvider provider,
  ) {
    return call(
      socialId: provider.socialId,
      appleToken: provider.appleToken,
      googleToken: provider.googleToken,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'checkSocialProvider';
}

/// See also [checkSocial].
class CheckSocialProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, String?>> {
  /// See also [checkSocial].
  CheckSocialProvider({
    required String socialId,
    String? appleToken,
    String? googleToken,
  }) : this._internal(
          (ref) => checkSocial(
            ref as CheckSocialRef,
            socialId: socialId,
            appleToken: appleToken,
            googleToken: googleToken,
          ),
          from: checkSocialProvider,
          name: r'checkSocialProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkSocialHash,
          dependencies: CheckSocialFamily._dependencies,
          allTransitiveDependencies:
              CheckSocialFamily._allTransitiveDependencies,
          socialId: socialId,
          appleToken: appleToken,
          googleToken: googleToken,
        );

  CheckSocialProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.socialId,
    required this.appleToken,
    required this.googleToken,
  }) : super.internal();

  final String socialId;
  final String? appleToken;
  final String? googleToken;

  @override
  Override overrideWith(
    FutureOr<Either<ApiFailures, String?>> Function(CheckSocialRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckSocialProvider._internal(
        (ref) => create(ref as CheckSocialRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        socialId: socialId,
        appleToken: appleToken,
        googleToken: googleToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<ApiFailures, String?>>
      createElement() {
    return _CheckSocialProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckSocialProvider &&
        other.socialId == socialId &&
        other.appleToken == appleToken &&
        other.googleToken == googleToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, socialId.hashCode);
    hash = _SystemHash.combine(hash, appleToken.hashCode);
    hash = _SystemHash.combine(hash, googleToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckSocialRef
    on AutoDisposeFutureProviderRef<Either<ApiFailures, String?>> {
  /// The parameter `socialId` of this provider.
  String get socialId;

  /// The parameter `appleToken` of this provider.
  String? get appleToken;

  /// The parameter `googleToken` of this provider.
  String? get googleToken;
}

class _CheckSocialProviderElement
    extends AutoDisposeFutureProviderElement<Either<ApiFailures, String?>>
    with CheckSocialRef {
  _CheckSocialProviderElement(super.provider);

  @override
  String get socialId => (origin as CheckSocialProvider).socialId;
  @override
  String? get appleToken => (origin as CheckSocialProvider).appleToken;
  @override
  String? get googleToken => (origin as CheckSocialProvider).googleToken;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
