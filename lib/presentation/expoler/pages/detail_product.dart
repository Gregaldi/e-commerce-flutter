import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce/core/components/buttons.dart';
import 'package:ecommerce/core/components/loading_indicator.dart';
import 'package:ecommerce/core/components/spaces.dart';
import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/core/extensions/build_context_ext.dart';
import 'package:ecommerce/core/extensions/int_ext.dart';
import 'package:ecommerce/core/utils/format_price.dart';
import 'package:ecommerce/data/model/response/cart_product_response_model.dart';
import 'package:ecommerce/presentation/cart/bloc/cart_bloc.dart';
import 'package:ecommerce/presentation/expoler/product/product_bloc.dart';
import 'package:ecommerce/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/assets/assets.gen.dart';

class DetailProductPage extends StatefulWidget {
  final String id;
  final String categories;
  const DetailProductPage({
    super.key,
    required this.id,
    required this.categories,
  });

  @override
  State<DetailProductPage> createState() => _DetailDestinationPageState();
}

class _DetailDestinationPageState extends State<DetailProductPage> {
  // final DateTime today = DateTime.now();
  @override
  void initState() {
    super.initState();
    // dates = List.generate(7, (index) => today.add(Duration(days: index)));
    log('DetailDestinationPage initState id ${widget.id}');
    context.read<ProductBloc>().add(ProductEvent.getProductById(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        // Tampilkan dialog konfirmasi jika tombol kembali ditekan
        context.push(HomePage());
        // context.pop();
        context
            .read<ProductBloc>()
            .add(ProductEvent.getProduct(widget.categories));
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.lightBackground,
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const SizedBox.shrink();
              },
              loading: () {
                return const LoadingIndicator();
              },
              detailsuccessproduct: (data) {
                return ListView(
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          data.image!,
                          width: context.deviceWidth,
                          height: 243.0,
                          fit: BoxFit.contain,
                        ),
                        Container(
                          height: 86,
                          width: context.deviceWidth,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.pop();
                                  context.read<ProductBloc>().add(
                                      ProductEvent.getProduct(
                                          widget.categories));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.arrow_back,
                                    size: 24.0,
                                    color: AppColors.black.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                Assets.icons.archiveBook.path,
                                width: 24.0,
                                height: 24.0,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      width: context.deviceWidth,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: const Color(0xff000000).withAlpha(8),
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.title!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                          Text(
                            data.category!,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.red,
                            ),
                          ),
                          const SpaceHeight(10),
                          RichText(
                            text: TextSpan(
                              text: '',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text: "${data.rating!.rate}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: AppColors.primary,
                                  ),
                                ),
                                TextSpan(
                                  text: ' (${data.rating!.count}),',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(
                                      0xff687176,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            data.price!.isNotEmpty
                                ? FormatPrice()
                                    .formatPrice(
                                        data.price!.replaceAll(".", ""))
                                    .currencyFormatRp
                                : "-",
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.orange,
                            ),
                          ),
                          const SpaceHeight(8),
                          Text(
                            data.description!,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SpaceHeight(16),
                  ],
                );
              },
            );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox.shrink();
                },
                loading: () {
                  return const LoadingIndicator();
                },
                detailsuccessproduct: (data) {
                  return BlocConsumer<CartBloc, CartState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        loaded: (model) async {
                          context.showSnackBar(
                              "Berhasil menambahkan ${model.last.title} ke keranjang",
                              Colors.green);
                          await Future.delayed(Duration(seconds: 2));
                          context.pop();
                        },
                        error: (message) {
                          context.showSnackBar(message, AppColors.red);
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Button.filled(
                            height: 48,
                            onPressed: () {
                              // if (emailController!.text.isNotEmpty &&
                              //     passwordController!.text.isNotEmpty) {
                              //   final model = LoginRequestModel(
                              //     username: emailController!.text,
                              //     password: passwordController!.text,
                              //   );
                              //   log("data ${model.toMap()}");
                              // context.read<CartBloc>().add(
                              //       CartEvent.removeCartAll(),
                              //     );

                              context.read<CartBloc>().add(
                                    CartEvent.addToCart(
                                      CartProductResponseModel(
                                        id: data.id,
                                        title: data.title,
                                        category: data.category,
                                        price: data.price,
                                        description: data.description,
                                        image: data.image,
                                        rating: Rating.fromJson(
                                            data.rating!.toJson()),
                                        quantity: 1,
                                      ),
                                    ),
                                  );
                            },
                            label: 'Tambahkan ke Keranjang',
                          );
                        },
                        loading: () {
                          return const LoadingIndicator();
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
