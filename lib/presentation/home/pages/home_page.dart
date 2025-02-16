import 'package:ecommerce/core/assets/assets.gen.dart';
import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/core/extensions/build_context_ext.dart';
import 'package:ecommerce/presentation/cart/pages/orders_page.dart';
import 'package:ecommerce/presentation/cart/widget/card_order.dart';
import 'package:ecommerce/presentation/expoler/pages/explore_page.dart';
import 'package:ecommerce/presentation/home/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ExplorePage(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title:
            const Text('E-Commerce', style: TextStyle(color: AppColors.white)),
        actions: [
          IconButton(
            color: AppColors.white,
            icon: const Icon(
              Icons.add_shopping_cart_outlined,
            ),
            onPressed: () {
              context.push(const OrdersPage(
                categories: 'electronics',
              ));
            },
          ),
        ],
      ),
      body: SafeArea(child: _pages[_selectedIndex]),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: AppColors.primary,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(
              iconPath: Assets.icons.explore.path,
              label: 'Explore',
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
          ],
        ),
      ),
    );
  }
}
