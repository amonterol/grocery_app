import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/consts/firebase_consts.dart';
import 'package:grocery_app/providers/products_provider.dart';
import 'package:grocery_app/providers/wishlist_provider.dart';
import 'package:grocery_app/services/global_methods.dart';
import 'package:provider/provider.dart';

import '../services/utils.dart';

class HeartBTN extends StatelessWidget {
  const HeartBTN({Key? key, required this.productId, this.isInWishlist})
      : super(key: key);
  final String productId;
  final bool? isInWishlist;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductsProvider>(context);
    final getCurrProduct = productProvider.findProdById(productId);
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    final Color color = Utils(context).color;
    return GestureDetector(
      onTap: () async {
        try {
          final User? user = authInstance.currentUser;

          if (user == null) {
            GlobalMethods.errorDialog(
                subtitle: 'No user found, Please login first',
                context: context);
            return;
          }
          if (isInWishlist == false && isInWishlist != null) {
            await GlobalMethods.addToWishlist(
                productId: productId, context: context);
          } else {
            await wishlistProvider.removeOneItem(
                wishlistId:
                    wishlistProvider.getWishlistItems[getCurrProduct.id]!.id,
                productId: productId);
          }
          await wishlistProvider.fetchWishlist();
        } catch (error) {
          GlobalMethods.errorDialog(subtitle: '$error', context: context);
        } finally {}
        // print('user id is ${user.uid}');
        // wishlistProvider.addRemoveProductToWishlist(productId: productId);
      },
      child: Icon(
        isInWishlist != null && isInWishlist == true
            ? IconlyBold.heart
            : IconlyLight.heart,
        size: 22,
        color:
            isInWishlist != null && isInWishlist == true ? Colors.red : color,
      ),
    );
  }
}
