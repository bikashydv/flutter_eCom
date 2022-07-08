import 'package:ecommerce/widget/feeds_product.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Feeds extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
// GridView.custom(
//   gridDelegate: SliverWovenGridDelegate.count(
//     crossAxisCount: 2,
//     mainAxisSpacing: 8,
//     crossAxisSpacing: 8,
//     pattern: [
//       WovenGridTile(1),
//       WovenGridTile(
//         5 / 7,
//         crossAxisRatio: 0.9,
//         alignment: AlignmentDirectional.centerEnd,
//       ),
//     ],
//   ),
//   childrenDelegate: SliverChildBuilderDelegate(
//     (context, index) => FeedProducts(),
//   ),
// )
        

        GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 290,
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            children: List.generate(
              100,
              (index) {
                return FeedProducts();
              },
            )),
        );
  }
}
