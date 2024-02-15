// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchMovieHash() => r'5d3d020f66c9121ffd9e8712a7999f648047ab5f';

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

/// See also [searchMovie].
@ProviderFor(searchMovie)
const searchMovieProvider = SearchMovieFamily();

/// See also [searchMovie].
class SearchMovieFamily extends Family<AsyncValue> {
  /// See also [searchMovie].
  const SearchMovieFamily();

  /// See also [searchMovie].
  SearchMovieProvider call({
    String? query,
  }) {
    return SearchMovieProvider(
      query: query,
    );
  }

  @override
  SearchMovieProvider getProviderOverride(
    covariant SearchMovieProvider provider,
  ) {
    return call(
      query: provider.query,
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
  String? get name => r'searchMovieProvider';
}

/// See also [searchMovie].
class SearchMovieProvider extends AutoDisposeFutureProvider<Object?> {
  /// See also [searchMovie].
  SearchMovieProvider({
    String? query,
  }) : this._internal(
          (ref) => searchMovie(
            ref as SearchMovieRef,
            query: query,
          ),
          from: searchMovieProvider,
          name: r'searchMovieProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchMovieHash,
          dependencies: SearchMovieFamily._dependencies,
          allTransitiveDependencies:
              SearchMovieFamily._allTransitiveDependencies,
          query: query,
        );

  SearchMovieProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String? query;

  @override
  Override overrideWith(
    FutureOr<Object?> Function(SearchMovieRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchMovieProvider._internal(
        (ref) => create(ref as SearchMovieRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Object?> createElement() {
    return _SearchMovieProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchMovieProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchMovieRef on AutoDisposeFutureProviderRef<Object?> {
  /// The parameter `query` of this provider.
  String? get query;
}

class _SearchMovieProviderElement
    extends AutoDisposeFutureProviderElement<Object?> with SearchMovieRef {
  _SearchMovieProviderElement(super.provider);

  @override
  String? get query => (origin as SearchMovieProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
