part of 'homescreen_cubit.dart';

@immutable
class HomeScreenState {
  final bool isLoading;
  final String? error;
  final List<Product>? allproducts;
  final List<Categories>? allcateogries;
  Product? selectedProduct;
  HomeScreenState({
    this.selectedProduct,
    this.allcateogries,
    this.isLoading = false,
    this.error,
    this.allproducts,
  });
  HomeScreenState copyWith({
    bool? isLoading,
    String? error,
    List<Product>? allproducts,
    List<Categories>? allcateogries,
    Product? selectedProduct,
  }) {
    return HomeScreenState(
        allproducts: allproducts ?? this.allproducts,
        error: error ?? this.error,
        isLoading: isLoading ?? this.isLoading,
        allcateogries: allcateogries ?? this.allcateogries,
        selectedProduct: selectedProduct ?? this.selectedProduct);
  }
}
