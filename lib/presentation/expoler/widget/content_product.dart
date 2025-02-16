// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:ecommerce/core/components/loading_indicator.dart';
import 'package:ecommerce/core/components/spaces.dart';
import 'package:ecommerce/presentation/expoler/product/product_bloc.dart';
import 'package:ecommerce/presentation/expoler/widget/card_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentEvent extends StatelessWidget {
  const ContentEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          loading: () {
            return const LoadingIndicator();
          },
          success: (data) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 kolom
                  crossAxisSpacing: 10, // Jarak antar kolom
                  mainAxisSpacing: 10, // Jarak antar baris
                  childAspectRatio: 0.8, // Perbandingan tinggi-lebar item
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CardDestination(
                    event: data[index],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
