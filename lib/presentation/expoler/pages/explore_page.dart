import 'dart:developer';

import 'package:ecommerce/core/assets/assets.gen.dart';
import 'package:ecommerce/core/components/loading_indicator.dart';
import 'package:ecommerce/core/components/spaces.dart';
import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/core/extensions/build_context_ext.dart';
import 'package:ecommerce/presentation/expoler/product/product_bloc.dart';
import 'package:ecommerce/presentation/expoler/categori/categori_bloc.dart';
import 'package:ecommerce/presentation/expoler/widget/content_product.dart';
import 'package:ecommerce/presentation/expoler/widget/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String query = "electronics";
  @override
  void initState() {
    super.initState();
    context.read<CategoriBloc>().add(const CategoriEvent.getCategories());
    context.read<ProductBloc>().add(ProductEvent.getProduct(query));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.primary,
      statusBarBrightness: Brightness.dark,
    ));
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            SpaceHeight(16),
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 10.0,
                    color: Colors.black.withAlpha(25),
                  ),
                ],
              ),
              height: 44,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length > 1) {
                    context
                        .read<ProductBloc>()
                        .add(ProductEvent.searchProduct(value));
                  }
                  if (value.isEmpty) {
                    context
                        .read<ProductBloc>()
                        .add(const ProductEvent.fetchAllFromState());
                  }
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    // color: Color(0xff9CA3AF),
                    color: AppColors.textBlack2,
                  ),
                  hintText: "Search Product",
                  hintStyle: TextStyle(
                    fontSize: 12.0,
                    // color: Color(0xffD1D5DB),
                    color: AppColors.textBlack2,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SpaceHeight(16),
            BlocBuilder<CategoriBloc, CategoriState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                  loading: () {
                    return const LoadingIndicator();
                  },
                  success: (data) {
                    return Container(
                      color: AppColors.white,
                      child: Builder(
                        builder: (context) {
                          final TabController controller =
                              DefaultTabController.of(context);
                          controller.addListener(() {
                            final selectedCategory = data[controller.index];
                            query = selectedCategory;
                            log("Selected Query: $query");
                            context
                                .read<ProductBloc>()
                                .add(ProductEvent.getProduct(query));

                            setState(() {});
                          });

                          return AnimatedBuilder(
                            animation: controller,
                            builder: (context, _) {
                              return TabBar(
                                  onTap: (index) {
                                    context.read<ProductBloc>().add(
                                        ProductEvent.getProduct(data[index]));
                                  },
                                  indicatorColor: AppColors.primary,
                                  labelColor: AppColors.primary,
                                  unselectedLabelColor: AppColors.disable,
                                  tabs: [
                                    ...data.map((e) {
                                      return CustomTab(
                                        label: e,
                                      );
                                    })
                                  ]);
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ContentEvent(),
                  ContentEvent(),
                  ContentEvent(),
                  ContentEvent(),
                ],
              ),
            ),
          ],
        ),
        // body: NestedScrollView(
        //   headerSliverBuilder: (context, innerBoxIsScrolled) => [
        //     SliverToBoxAdapter(
        //       child: Padding(
        //         padding: const EdgeInsets.only(bottom: 18),
        //         child: Stack(
        //           clipBehavior: Clip.none,
        //           children: [
        //             Image.asset(
        //               Assets.images.banner1.path,
        //               width: context.deviceWidth,
        //               fit: BoxFit.contain,
        //             ),
        //             Positioned(
        //               top: context.deviceHeight * 0.22,
        //               left: 16.0,
        //               right: 16.0,
        //               child: Container(
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: 4, vertical: 0),
        //                 decoration: BoxDecoration(
        //                   color: AppColors.white.withOpacity(0.9),
        //                   borderRadius: BorderRadius.circular(20.0),
        //                   boxShadow: [
        //                     BoxShadow(
        //                       offset: const Offset(0, 4),
        //                       blurRadius: 10.0,
        //                       color: Colors.black.withAlpha(25),
        //                     ),
        //                   ],
        //                 ),
        //                 height: 44,
        //                 child: TextFormField(
        //                   onChanged: (value) {
        //                     // if (value.length > 3) {
        //                     //   context
        //                     //       .read<EventBloc>()
        //                     //       .add(EventEvent.searchEvent(value));
        //                     // }
        //                     // if (value.isEmpty) {
        //                     //   context
        //                     //       .read<EventBloc>()
        //                     //       .add(const EventEvent.fetchAllFromState());
        //                     // }
        //                   },
        //                   decoration: const InputDecoration(
        //                     prefixIcon: Icon(
        //                       Icons.search,
        //                       // color: Color(0xff9CA3AF),
        //                       color: AppColors.textBlack2,
        //                     ),
        //                     hintText: "Tiket Wisata",
        //                     hintStyle: TextStyle(
        //                       fontSize: 12.0,
        //                       // color: Color(0xffD1D5DB),
        //                       color: AppColors.textBlack2,
        //                     ),
        //                     border: InputBorder.none,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        //   body:
        // ),
      ),
    );
  }
}
