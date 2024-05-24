// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTrainingRequestHash() =>
    r'033704198a39539ff1015842ebe9f87fea2cf38a';

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

/// See also [getTrainingRequest].
@ProviderFor(getTrainingRequest)
const getTrainingRequestProvider = GetTrainingRequestFamily();

/// See also [getTrainingRequest].
class GetTrainingRequestFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getTrainingRequest].
  const GetTrainingRequestFamily();

  /// See also [getTrainingRequest].
  GetTrainingRequestProvider call({
    int? id,
  }) {
    return GetTrainingRequestProvider(
      id: id,
    );
  }

  @override
  GetTrainingRequestProvider getProviderOverride(
    covariant GetTrainingRequestProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'getTrainingRequestProvider';
}

/// See also [getTrainingRequest].
class GetTrainingRequestProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getTrainingRequest].
  GetTrainingRequestProvider({
    int? id,
  }) : this._internal(
          (ref) => getTrainingRequest(
            ref as GetTrainingRequestRef,
            id: id,
          ),
          from: getTrainingRequestProvider,
          name: r'getTrainingRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTrainingRequestHash,
          dependencies: GetTrainingRequestFamily._dependencies,
          allTransitiveDependencies:
              GetTrainingRequestFamily._allTransitiveDependencies,
          id: id,
        );

  GetTrainingRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int? id;

  @override
  Override overrideWith(
    FutureOr<Either<ApiFailures, dynamic>> Function(
            GetTrainingRequestRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTrainingRequestProvider._internal(
        (ref) => create(ref as GetTrainingRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<ApiFailures, dynamic>>
      createElement() {
    return _GetTrainingRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTrainingRequestProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTrainingRequestRef
    on AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>> {
  /// The parameter `id` of this provider.
  int? get id;
}

class _GetTrainingRequestProviderElement
    extends AutoDisposeFutureProviderElement<Either<ApiFailures, dynamic>>
    with GetTrainingRequestRef {
  _GetTrainingRequestProviderElement(super.provider);

  @override
  int? get id => (origin as GetTrainingRequestProvider).id;
}

String _$getAlamanRequestHash() => r'b193219836a8e0fb57a5c6954ed42346a4a03fc4';

/// See also [getAlamanRequest].
@ProviderFor(getAlamanRequest)
const getAlamanRequestProvider = GetAlamanRequestFamily();

/// See also [getAlamanRequest].
class GetAlamanRequestFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getAlamanRequest].
  const GetAlamanRequestFamily();

  /// See also [getAlamanRequest].
  GetAlamanRequestProvider call({
    int? id,
  }) {
    return GetAlamanRequestProvider(
      id: id,
    );
  }

  @override
  GetAlamanRequestProvider getProviderOverride(
    covariant GetAlamanRequestProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'getAlamanRequestProvider';
}

/// See also [getAlamanRequest].
class GetAlamanRequestProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getAlamanRequest].
  GetAlamanRequestProvider({
    int? id,
  }) : this._internal(
          (ref) => getAlamanRequest(
            ref as GetAlamanRequestRef,
            id: id,
          ),
          from: getAlamanRequestProvider,
          name: r'getAlamanRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlamanRequestHash,
          dependencies: GetAlamanRequestFamily._dependencies,
          allTransitiveDependencies:
              GetAlamanRequestFamily._allTransitiveDependencies,
          id: id,
        );

  GetAlamanRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int? id;

  @override
  Override overrideWith(
    FutureOr<Either<ApiFailures, dynamic>> Function(
            GetAlamanRequestRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlamanRequestProvider._internal(
        (ref) => create(ref as GetAlamanRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<ApiFailures, dynamic>>
      createElement() {
    return _GetAlamanRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlamanRequestProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAlamanRequestRef
    on AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>> {
  /// The parameter `id` of this provider.
  int? get id;
}

class _GetAlamanRequestProviderElement
    extends AutoDisposeFutureProviderElement<Either<ApiFailures, dynamic>>
    with GetAlamanRequestRef {
  _GetAlamanRequestProviderElement(super.provider);

  @override
  int? get id => (origin as GetAlamanRequestProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
