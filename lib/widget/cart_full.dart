import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:provider/provider.dart';

class CartFull extends StatefulWidget {
  CartFull({Key? key}) : super(key: key);

  @override
  State<CartFull> createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
      height: 135,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0)),
        color: Colors.blue,
      ),
      child: Row(children: [
        Container(
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'http://cdnmaster.rltools.com/assets/campaigns/ecard/bhhs/_2016-new/5203-daylight-savings-leaves/images/main.jpg'),
            fit: BoxFit.fill,
          )),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(2.5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Title',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(35.0),
                        //splashColor: ,
                        onTap: () {},
                        child: Container(
                            height: 50,
                            width: 50,
                            //  child: Icon(Icons.delete)),
                            child: Icon(
                              Entypo.cancel,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    // IconButton(icon: Icon(Icons.delete),      // to set  del box button
                    // onPressed: (){},
                    // ),

                    // IconButton(onPressed: onPressed, icon: icon)  /// why this is giving option in this
                  ],
                ),
                Row(
                  children: [
                    Text('price:'),
                    Text(
                      '420\$',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('Sub total:'),
                    Text(
                      '432\$',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: themeChange.darkTheme
                              ? Colors.brown.shade800
                              : Theme.of(context).accentColor),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'ships free',
                      style: TextStyle(
                          color: themeChange.darkTheme
                              ? Colors.brown.shade800
                              : Theme.of(context).accentColor),
                    ),
                    Spacer(),
                    Material(

                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5.0),
                        //splashColor: ,
                        onTap: () {},
                        child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                          Entypo.minus,
                          color: Colors.red,
                        ),
                            )),
                      ),
                    ),
                    Card(
                      elevation: 12,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.12,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            ColorsConsts.gradiendFStart,
                            ColorsConsts.gradiendFEnd,
                          ], stops: [
                            0.0,
                            0.7
                          ]),
                        ),
                        child: Text(
                          '10',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5.0),
                        //splashColor: ,
                        onTap: () {},
                        child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                          Entypo.plus,
                          color: Colors.green,
                        ),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
