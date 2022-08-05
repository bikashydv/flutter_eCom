
import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WhitelistEmpty extends StatelessWidget {
  // const CartEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 25),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/whitelist_empty.png'))),
        ),
        Text(
          'Your Whitelist Is Empty',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontSize: 39,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'Explore more and shortlist some item',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: themeChange.darkTheme
                  ? Theme.of(context).disabledColor
                  : ColorsConsts.subTitle,
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(height:30),  
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
          child: ElevatedButton(
            onPressed: () {},
            
            child: 
            Text(
              ' Add a wish'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  ),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.redAccent,shape: StadiumBorder()),
          ),
        )
      ],
    );
  }
}
