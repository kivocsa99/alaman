// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getNewsHash() => r'4eda9d9be4b172feb18fc876d03b45a91a989e90';

/// See also [getNews].
@ProviderFor(getNews)
final getNewsProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, List<NewsModel>>>.internal(
  getNews,
  name: r'getNewsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getNewsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetNewsRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, List<NewsModel>>>;
String _$deleteMyAccountHash() => r'02185772dff9473397d3da30a83fb378e8218957';

/// See also [deleteMyAccount].
@ProviderFor(deleteMyAccount)
final deleteMyAccountProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, dynamic>>.internal(
  deleteMyAccount,
  name: r'deleteMyAccountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$deleteMyAccountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DeleteMyAccountRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;
String _$getGenericHash() => r'69cda37d3eb7f5e23620ed160edee4c43b2724d9';

/// See also [getGeneric].
@ProviderFor(getGeneric)
final getGenericProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, GenericModel>>.internal(
  getGeneric,
  name: r'getGenericProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getGenericHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGenericRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, GenericModel>>;
String _$getProfileHash() => r'b4aea27e8de846389c73d26bb129a683ade84f6a';

/// See also [getProfile].
@ProviderFor(getProfile)
final getProfileProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, dynamic>>.internal(
  getProfile,
  name: r'getProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetProfileRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;
String _$getProfileByIDHash() => r'de2cce6fafc562150307707bdcee71a77daa5c12';

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

/// See also [getProfileByID].
@ProviderFor(getProfileByID)
const getProfileByIDProvider = GetProfileByIDFamily();

/// See also [getProfileByID].
class GetProfileByIDFamily
    extends Family<AsyncValue<Either<ApiFailures, BeneficiaryModel>>> {
  /// See also [getProfileByID].
  const GetProfileByIDFamily();

  /// See also [getProfileByID].
  GetProfileByIDProvider call({
    String? profileId,
  }) {
    return GetProfileByIDProvider(
      profileId: profileId,
    );
  }

  @override
  GetProfileByIDProvider getProviderOverride(
    covariant GetProfileByIDProvider provider,
  ) {
    return call(
      profileId: provider.profileId,
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
  String? get name => r'getProfileByIDProvider';
}

/// See also [getProfileByID].
class GetProfileByIDProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, BeneficiaryModel>> {
  /// See also [getProfileByID].
  GetProfileByIDProvider({
    String? profileId,
  }) : this._internal(
          (ref) => getProfileByID(
            ref as GetProfileByIDRef,
            profileId: profileId,
          ),
          from: getProfileByIDProvider,
          name: r'getProfileByIDProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getProfileByIDHash,
          dependencies: GetProfileByIDFamily._dependencies,
          allTransitiveDependencies:
              GetProfileByIDFamily._allTransitiveDependencies,
          profileId: profileId,
        );

  GetProfileByIDProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.profileId,
  }) : super.internal();

  final String? profileId;

  @override
  Override overrideWith(
    FutureOr<Either<ApiFailures, BeneficiaryModel>> Function(
            GetProfileByIDRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetProfileByIDProvider._internal(
        (ref) => create(ref as GetProfileByIDRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        profileId: profileId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<ApiFailures, BeneficiaryModel>>
      createElement() {
    return _GetProfileByIDProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetProfileByIDProvider && other.profileId == profileId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, profileId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetProfileByIDRef
    on AutoDisposeFutureProviderRef<Either<ApiFailures, BeneficiaryModel>> {
  /// The parameter `profileId` of this provider.
  String? get profileId;
}

class _GetProfileByIDProviderElement extends AutoDisposeFutureProviderElement<
    Either<ApiFailures, BeneficiaryModel>> with GetProfileByIDRef {
  _GetProfileByIDProviderElement(super.provider);

  @override
  String? get profileId => (origin as GetProfileByIDProvider).profileId;
}

String _$getProductsHash() => r'cbf23f84d8bec6b53da054dfe8c40a07e30880f7';

/// See also [getProducts].
@ProviderFor(getProducts)
final getProductsProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, List<ProductModel>>>.internal(
  getProducts,
  name: r'getProductsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetProductsRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, List<ProductModel>>>;
String _$getRequestsHash() => r'f164b3fbc481a2c46165e3acbc0b8854a13dfce3';

/// See also [getRequests].
@ProviderFor(getRequests)
final getRequestsProvider = AutoDisposeFutureProvider<
    Either<ApiFailures, List<AlamanRequestModel>>>.internal(
  getRequests,
  name: r'getRequestsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getRequestsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetRequestsRef = AutoDisposeFutureProviderRef<
    Either<ApiFailures, List<AlamanRequestModel>>>;
String _$gettrainingHash() => r'f0b93e4071e2a35e2cba1cd31cdf1ae5843b2b2d';

/// See also [gettraining].
@ProviderFor(gettraining)
final gettrainingProvider = AutoDisposeFutureProvider<
    Either<ApiFailures, List<TrainingRequestModel>>>.internal(
  gettraining,
  name: r'gettrainingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gettrainingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GettrainingRef = AutoDisposeFutureProviderRef<
    Either<ApiFailures, List<TrainingRequestModel>>>;
String _$searchBeneficiariesHash() =>
    r'05ab4129f868563e6a80eecf4830523832baf849';

/// See also [searchBeneficiaries].
@ProviderFor(searchBeneficiaries)
const searchBeneficiariesProvider = SearchBeneficiariesFamily();

/// See also [searchBeneficiaries].
class SearchBeneficiariesFamily extends Family<
    AsyncValue<
        Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>>> {
  /// See also [searchBeneficiaries].
  const SearchBeneficiariesFamily();

  /// See also [searchBeneficiaries].
  SearchBeneficiariesProvider call({
    int? genderId,
    int? cityId,
    int? educationalYearId,
    String? age,
    int? scholarshipTypeId,
  }) {
    return SearchBeneficiariesProvider(
      genderId: genderId,
      cityId: cityId,
      educationalYearId: educationalYearId,
      age: age,
      scholarshipTypeId: scholarshipTypeId,
    );
  }

  @override
  SearchBeneficiariesProvider getProviderOverride(
    covariant SearchBeneficiariesProvider provider,
  ) {
    return call(
      genderId: provider.genderId,
      cityId: provider.cityId,
      educationalYearId: provider.educationalYearId,
      age: provider.age,
      scholarshipTypeId: provider.scholarshipTypeId,
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
  String? get name => r'searchBeneficiariesProvider';
}

/// See also [searchBeneficiaries].
class SearchBeneficiariesProvider extends AutoDisposeFutureProvider<
    Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>> {
  /// See also [searchBeneficiaries].
  SearchBeneficiariesProvider({
    int? genderId,
    int? cityId,
    int? educationalYearId,
    String? age,
    int? scholarshipTypeId,
  }) : this._internal(
          (ref) => searchBeneficiaries(
            ref as SearchBeneficiariesRef,
            genderId: genderId,
            cityId: cityId,
            educationalYearId: educationalYearId,
            age: age,
            scholarshipTypeId: scholarshipTypeId,
          ),
          from: searchBeneficiariesProvider,
          name: r'searchBeneficiariesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchBeneficiariesHash,
          dependencies: SearchBeneficiariesFamily._dependencies,
          allTransitiveDependencies:
              SearchBeneficiariesFamily._allTransitiveDependencies,
          genderId: genderId,
          cityId: cityId,
          educationalYearId: educationalYearId,
          age: age,
          scholarshipTypeId: scholarshipTypeId,
        );

  SearchBeneficiariesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genderId,
    required this.cityId,
    required this.educationalYearId,
    required this.age,
    required this.scholarshipTypeId,
  }) : super.internal();

  final int? genderId;
  final int? cityId;
  final int? educationalYearId;
  final String? age;
  final int? scholarshipTypeId;

  @override
  Override overrideWith(
    FutureOr<
                Either<ApiFailures,
                    Tuple3<List<BeneficiaryModel>, String?, bool?>>>
            Function(SearchBeneficiariesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchBeneficiariesProvider._internal(
        (ref) => create(ref as SearchBeneficiariesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genderId: genderId,
        cityId: cityId,
        educationalYearId: educationalYearId,
        age: age,
        scholarshipTypeId: scholarshipTypeId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<
          Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>>
      createElement() {
    return _SearchBeneficiariesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchBeneficiariesProvider &&
        other.genderId == genderId &&
        other.cityId == cityId &&
        other.educationalYearId == educationalYearId &&
        other.age == age &&
        other.scholarshipTypeId == scholarshipTypeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genderId.hashCode);
    hash = _SystemHash.combine(hash, cityId.hashCode);
    hash = _SystemHash.combine(hash, educationalYearId.hashCode);
    hash = _SystemHash.combine(hash, age.hashCode);
    hash = _SystemHash.combine(hash, scholarshipTypeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchBeneficiariesRef on AutoDisposeFutureProviderRef<
    Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>> {
  /// The parameter `genderId` of this provider.
  int? get genderId;

  /// The parameter `cityId` of this provider.
  int? get cityId;

  /// The parameter `educationalYearId` of this provider.
  int? get educationalYearId;

  /// The parameter `age` of this provider.
  String? get age;

  /// The parameter `scholarshipTypeId` of this provider.
  int? get scholarshipTypeId;
}

class _SearchBeneficiariesProviderElement
    extends AutoDisposeFutureProviderElement<
        Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>>
    with SearchBeneficiariesRef {
  _SearchBeneficiariesProviderElement(super.provider);

  @override
  int? get genderId => (origin as SearchBeneficiariesProvider).genderId;
  @override
  int? get cityId => (origin as SearchBeneficiariesProvider).cityId;
  @override
  int? get educationalYearId =>
      (origin as SearchBeneficiariesProvider).educationalYearId;
  @override
  String? get age => (origin as SearchBeneficiariesProvider).age;
  @override
  int? get scholarshipTypeId =>
      (origin as SearchBeneficiariesProvider).scholarshipTypeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
