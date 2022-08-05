import 'package:badges/badges.dart';
import 'package:ecommerce/inner_screens/product_details.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class FeedProducts extends StatefulWidget {
  
  // const FeedProducts({Key? key}) : super(key: key);

  @override
  State<FeedProducts> createState() => _FeedProductsState();
}

class _FeedProductsState extends State<FeedProducts> {
  List<Product> _products = [

    Product(id:'Samsung1', title, description, price, imageUrl, productCategoryname, brand, quantity, isFavorite, isPopular)
  ] 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, ProductDetails.routeName),
        child: Container(
          width: 250,
          height: 290,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).backgroundColor),
          child: Column(children: [
            Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                            minHeight: 100,
                            maxHeight:
                                MediaQuery.of(context).size.height * 0.3),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU`',
                          // https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Badge(
                      toAnimate: true,
                      shape: BadgeShape.square,
                      badgeColor: Colors.pinkAccent,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(8)),
                      badgeContent:
                          Text('new', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              margin: EdgeInsets.only(left: 5, bottom: 2, right: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Description',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '\$ 31.83',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity: 12 left',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(18.0),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
