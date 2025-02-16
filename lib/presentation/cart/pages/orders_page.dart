import 'package:ecommerce/core/components/buttons.dart';
import 'package:ecommerce/core/components/loading_indicator.dart';
import 'package:ecommerce/core/components/spaces.dart';
import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/core/extensions/build_context_ext.dart';
import 'package:ecommerce/core/extensions/int_ext.dart';
import 'package:ecommerce/data/model/response/cart_product_response_model.dart';
import 'package:ecommerce/presentation/cart/bloc/cart_bloc.dart';
import 'package:ecommerce/presentation/cart/widget/card_order.dart';
import 'package:ecommerce/presentation/cart/widget/dashedline.dart';
import 'package:ecommerce/presentation/cart/widget/empty_order_widget.dart';
import 'package:ecommerce/presentation/expoler/product/product_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  final String categories;

  const OrdersPage({super.key, required this.categories});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  int totalItems = 0;
  int totalPrize = 0;
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.getCart());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: GestureDetector(
          onTap: () {
            context.pop();
            context
                .read<ProductBloc>()
                .add(ProductEvent.getProduct(widget.categories));
          },
          child: const Icon(
            Icons.arrow_back,
            size: 24.0,
            color: AppColors.white,
          ),
        ),
        title: const Text(
          "Daftar Pesanan",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                context.read<CartBloc>().add(const CartEvent.removeCartAll());
              },
              child: Icon(
                Icons.delete,
                size: 24.0,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 200,
        child: Column(
          children: [
            Container(
              height: 180,
              padding: const EdgeInsets.all(
                16,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.white,
                border: Border(
                  top: BorderSide(
                    color: Color(
                      0xffF6F6F6,
                    ),
                    width: 1,
                  ),
                ),
              ),
              child: BlocConsumer<CartBloc, CartState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                    error: (error) {
                      return const SizedBox.shrink();
                    },
                    loaded: (orders) {
                      if (orders.isEmpty) {
                        return Container();
                      }
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Harga Total',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textBlack,
                                    ),
                                  ),
                                  Text(
                                    'Jumlah item: ${totalItems} ',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.disable,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                totalPrize.currencyFormatRp,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.orange,
                                ),
                              ),
                            ],
                          ),
                          const SpaceHeight(12),
                          const DashedLine(),
                          const SpaceHeight(28),
                          BlocConsumer<CartBloc, CartState>(
                            listener: (context, state) {
                              state.maybeWhen(
                                orElse: () {},
                                error: (error) {
                                  context.showSnackBar(error, AppColors.red);
                                },
                                loaded: (data) {
                                  // context.push(
                                  //   PaymentPage(
                                  //     data: data,
                                  //   ),
                                  // );
                                },
                              );
                            },
                            builder: (context, state) {
                              return state.maybeWhen(orElse: () {
                                return Button.filled(
                                  color: AppColors.primary,
                                  label: "✦ Bayar Sekarang ✦",
                                  textColor: AppColors.white,
                                  onPressed: () {},
                                );
                              }, loading: () {
                                return const LoadingIndicator();
                              });
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    error: (error) {
                      context.showSnackBar(error, AppColors.red);
                    },
                    loaded: (orders) {
                      // Menghitung total harga
                      totalPrize = orders.fold(
                          0,
                          (sum, item) =>
                              sum + (int.parse(item.price!) * item.quantity!));

                      // Menghitung total jumlah item
                      totalItems = orders.fold(
                          0, (count, item) => count + item.quantity!);
                      if (orders.isEmpty) {
                        return Container();
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const SizedBox.shrink();
            },
            loading: () {
              return const LoadingIndicator();
            },
            error: (message) {
              return Center(
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red,
                  ),
                ),
              );
            },
            loaded: (orders) {
              if (orders.isEmpty) {
                return const EmptyOrderWidget();
              }
              return ListView.separated(
                itemCount: orders.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SpaceHeight(8);
                },
                itemBuilder: (BuildContext context, int index) {
                  return CardOrder(
                    order: orders[index],
                    onDecrement: () {
                      CartProductResponseModel cart = CartProductResponseModel(
                        id: orders[index].id,
                        title: orders[index].title,
                        price: orders[index].price,
                        image: orders[index].image,
                        quantity: orders[index].quantity! - 1,
                      );
                      context.read<CartBloc>().add(
                            CartEvent.updateCart(
                              cart,
                            ),
                          );
                    },
                    onIncrement: () {
                      CartProductResponseModel cart = CartProductResponseModel(
                        id: orders[index].id,
                        title: orders[index].title,
                        price: orders[index].price,
                        image: orders[index].image,
                        quantity: orders[index].quantity! + 1,
                      );
                      context.read<CartBloc>().add(
                            CartEvent.updateCart(
                              cart,
                            ),
                          );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
