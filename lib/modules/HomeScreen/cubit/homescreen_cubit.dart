import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:geeta_shop/data/models/categories.dart';
import 'package:geeta_shop/data/models/prodcut.dart';
import 'package:geeta_shop/data/repos/product_repo.dart';

part 'homescreen_state.dart';

class HomescreenCubit extends Cubit<HomeScreenState> {
  HomescreenCubit() : super(HomeScreenState()) {
    getAllProducts();
  }

  Future getAllProducts() async {
    emit(state.copyWith(isLoading: true));
    final allProductresponse = await ProductRepo.getAllProducts();
    if (allProductresponse != null) {
      log(allProductresponse.length.toString());
      emit(state.copyWith(allproducts: allProductresponse, isLoading: false));
    }
  }

  Future getSingleProduct(BuildContext context, Product selected) async {
    final newState = state.copyWith();
    newState.selectedProduct = null;
    emit(newState);

    emit(state.copyWith(selectedProduct: selected));

    Navigator.of(context).pushNamed("item screen");
  }
}
