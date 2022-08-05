import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/consts/my_icons.dart';
// import 'package:ecommerce/screens/cart_empty.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widget/cart_empty.dart';
import 'package:ecommerce/widget/cart_full.dart';
// import 'package:flutter_icons/flutter_icons.dart';



class Cart extends StatelessWidget {
    static const routeName = '\cartRoute';

  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List products = [];
    return products.isEmpty // to check here is vale  hiven or not  than use this!
        ? Scaffold(body: CartEmpty())
        : Scaffold(
            bottomSheet: checkoutSection(context),
            appBar: AppBar(
              title: Text('Cart Item Count'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(MyAppIcons.trash),
                )
              ],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CartFull();
                  }),
            ));
  }

  Widget checkoutSection(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors: [
                  ColorsConsts.gradiendFStart,
                  ColorsConsts.gradiendFEnd,
                ], stops: [
                  0.0,
                  0.7
                ]),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Checkout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(ctx).textSelectionColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Text(
            'Total:',
            // textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(ctx).textSelectionColor,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'US \$840.00',
            // textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blue, fontSize: 19, fontWeight: FontWeight.w500),
          ),
        ]),
      ),
    );
  }
}
