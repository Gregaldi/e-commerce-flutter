import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce/data/model/response/cart_product_response_model.dart';
import 'package:ecommerce/data/model/response/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartLocalDatasource {
  static const String cartKey = 'cart_items';

  /// Tambahkan produk ke keranjang (Update jumlah jika sudah ada)
  Future<void> addToCart(CartProductResponseModel product) async {
    log("cart product save ${jsonEncode(product)}");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cartList = prefs.getStringList(cartKey) ?? [];

    List<CartProductResponseModel> cartItems = cartList
        .map((item) => CartProductResponseModel.fromJson(jsonDecode(item)))
        .toList();

    // Cek apakah produk sudah ada di keranjang
    int index = cartItems.indexWhere((item) => item.id == product.id);
    log("cart save ${jsonEncode(cartItems)}");
    if (index != -1) {
      // Jika ada, tambahkan jumlahnya
      if (cartItems.isNotEmpty) {
        cartItems[index] = CartProductResponseModel(
          id: cartItems[index].id,
          title: cartItems[index].title,
          price: cartItems[index].price,
          image: cartItems[index].image,
          category: cartItems[index].category,
          description: cartItems[index].description,
          rating: cartItems[index].rating,
          quantity: cartItems[index].quantity! + 1, // ✅ Update jumlah
        );
      }
    } else {
      // Jika tidak ada, tambahkan sebagai item baru
      // cartItems.add(product.copyWith(quantity: 1));
      cartItems.add(product);
    }

    // Simpan kembali ke SharedPreferences
    List<String> updatedCartList =
        cartItems.map((item) => jsonEncode(item.toJson())).toList();
    await prefs.setStringList(cartKey, updatedCartList);
  }

  /// Mengupdate jumlah produk dalam keranjang
  Future<void> updateQuantity(int productId, int newQuantity) async {
    log("updateQuantity id: $productId, newQuantity: $newQuantity");

    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cartList = prefs.getStringList(cartKey) ?? [];

    List<CartProductResponseModel> cartItems = cartList
        .map((item) => CartProductResponseModel.fromJson(jsonDecode(item)))
        .toList();

    int index =
        cartItems.indexWhere((item) => int.parse(item.id!) == productId);
    log("Item found at index: $index");

    if (index != -1) {
      if (newQuantity > 0) {
        cartItems[index] = cartItems[index].copyWith(
          quantity: newQuantity,
          category: cartItems[index].category,
          description: cartItems[index].description,
          id: int.parse(cartItems[index].id.toString()),
          image: cartItems[index].image,
          price: double.parse(cartItems[index].price.toString()),
          rating: cartItems[index].rating,
          title: cartItems[index].title,
        );
        log("Updated item: ${jsonEncode(cartItems[index])}");
      } else {
        cartItems.removeAt(index); // Jika quantity <= 0, hapus dari keranjang
        log("Item removed from cart");
      }

      // Simpan kembali ke SharedPreferences hanya jika ada perubahan
      List<String> updatedCartList =
          cartItems.map((item) => jsonEncode(item.toJson())).toList();
      await prefs.setStringList(cartKey, updatedCartList);
      log("Updated cart: $updatedCartList");
    } else {
      log("Item not found in cart");
    }
  }

  /// Ambil semua produk dari keranjang
  Future<List<CartProductResponseModel>> getCartItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cartList = prefs.getStringList(cartKey) ?? [];
    List<CartProductResponseModel> cart = cartList
        .map((item) => CartProductResponseModel.fromJson(jsonDecode(item)))
        .toList();
    log("cart ${jsonEncode(cart)}");

    return cart;
  }

  /// Hapus produk dari keranjang
  Future<void> removeFromCart(int productId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cartList = prefs.getStringList(cartKey) ?? [];

    cartList.removeWhere((item) {
      Map<String, dynamic> product = jsonDecode(item);
      return product['id'] == productId;
    });

    await prefs.setStringList(cartKey, cartList);
  }

  /// Hapus semua produk dari keranjang
  Future<void> clearCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(cartKey);
  }
}
