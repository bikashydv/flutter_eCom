import 'package:ecommerce/inner_screens/brands_navigation_rail%20copy.dart';
import 'package:ecommerce/inner_screens/product_details.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:ecommerce/screens/buttom_bar.dart';
import 'package:ecommerce/consts/theme_data.dart';
import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/screens/feeds.dart';
import 'package:ecommerce/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  // const ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            return themeChangeProvider;
          })
        ],
        child:
            Consumer<DarkThemeProvider>(builder: (context, ThemeData, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            // theme: ThemeData( 
            //   primarySwatch: Colors.blue,                                   //theme//
            //   visualDensity: VisualDensity.adaptivePlatformDensity,
            // ),
            home: BottomBarScreen(),

            routes: {
              BrandNavigationRailScreen.routeName: (ctx) =>BrandNavigationRailScreen(),
              Cart.routeName: (ctx)=> Feeds(), 
              WishlistScreen.routeName: (ctx)=> WishlistScreen(),
              ProductDetails.routeName:(ctx)=> ProductDetails(), 


              
            },
          );
        }));
  }
}
    