import 'package:ecommerce/widget/whitlist_empty.dart';
import 'package:ecommerce/widget/wishlist_full.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = '/WishlistScreen';

  @override
  Widget build(BuildContext context) {
    List wishlistList = [];
    return !wishlistList.isEmpty // to check here is vale  given or not  than use this wishlist.isNotEmpty
        ? Scaffold(body: WhitelistEmpty())
        : Scaffold(
          appBar: AppBar(title: Text('wishlist()'),
          ),
        
            body: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext ctx, int index) {
                return WishlistFull();
              },
            ),
          );
  }
}
