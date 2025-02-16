// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/core/components/spaces.dart';
import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/core/extensions/build_context_ext.dart';
import 'package:ecommerce/core/extensions/int_ext.dart';
import 'package:ecommerce/core/utils/format_price.dart';
import 'package:ecommerce/data/model/response/cart_product_response_model.dart';
import 'package:flutter/material.dart';

class CardOrder extends StatelessWidget {
  final CartProductResponseModel order;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const CardOrder({
    super.key,
    required this.order,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: context.deviceWidth,
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          child: Row(
            children: [
              Image.network(order.image!, width: 100, height: 100),
              const SpaceWidth(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SpaceHeight(12),
                  SizedBox(
                    width: context.deviceWidth * 0.6,
                    child: Text(
                      order.title!,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack2,
                      ),
                    ),
                  ),
                  const SpaceHeight(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FormatPrice()
                            .formatPrice(order.price!.replaceAll(".", ""))
                            .currencyFormatRp,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textBlack2,
                        ),
                      ),
                      Container(
                        width: 112,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: onDecrement,
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(
                                      0xffE7EAED,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    4,
                                  ),
                                ),
                                child: Center(
                                  child: Container(
                                    height: 2,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      color: const Color(
                                        0xff3949AB,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              order.quantity!.toString(),
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(
                                  0xff031222,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: onIncrement,
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(
                                      0xffE7EAED,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    4,
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Color(
                                      0xff3949AB,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
