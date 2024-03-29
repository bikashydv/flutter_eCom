import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:fluttericon/entypo_icons.dart'; 
import 'package:ecommerce/consts/my_icons.dart';


class PopularProducts extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            onTap: () {},
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU`'),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    right: 12,
                    top: 10,
                    child: Icon(
                      FeatherIcons.star,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 7,
                    child: Icon(
                      FeatherIcons.star,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 12,
                    bottom: 32.0,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Theme.of(context).backgroundColor,
                      child: Text(
                        '\$12.2',
                        style: TextStyle(
                          color: Theme.of(context).textSelectionColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Description',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800],
                          ),
                        ),
                        Spacer(),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(30.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                FeatherIcons.shoppingCart,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
