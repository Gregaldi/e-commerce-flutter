// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'dart:math';

import 'package:ecommerce/core/assets/assets.gen.dart';
import 'package:ecommerce/core/components/spaces.dart';
import 'package:ecommerce/core/extensions/build_context_ext.dart';
import 'package:ecommerce/core/extensions/int_ext.dart';
import 'package:ecommerce/core/utils/format_price.dart';
import 'package:ecommerce/data/model/response/product_response_model.dart';
import 'package:ecommerce/presentation/expoler/pages/detail_product.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class CardDestination extends StatelessWidget {
  final ProductResponseModel event;
  const CardDestination({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Context push DetailDestinationPage");
        context.push(
          DetailProductPage(
            id: event.id!,
            categories: event.category!,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    event.image!,
                    width: 160.0,
                    height: 128.0,
                    fit: BoxFit.contain,
                  ),
                ),
                const SpaceHeight(4),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.title!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      const SpaceHeight(6),
                      RichText(
                        text: TextSpan(
                          text: '',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: "${event.rating!.rate}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: AppColors.primary,
                              ),
                            ),
                            TextSpan(
                              text: ' (${event.rating!.count}),',
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
                        event.price!.isNotEmpty
                            ? FormatPrice()
                                .formatPrice(event.price!.replaceAll(".", ""))
                                .currencyFormatRp
                            : "-",
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.orange,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
