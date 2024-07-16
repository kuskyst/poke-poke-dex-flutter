import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DetailShimmer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Padding(padding: const EdgeInsets.all(20), child: Center(
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: ShapeDecoration(
                color: Colors.grey[400],
                shape: const CircleBorder()
              )
            ),
            Padding(padding: const EdgeInsets.all(30), child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    const Text('No.'),
                    Container(
                      height: 12,
                      width: 120,
                      decoration: ShapeDecoration(
                        color: Colors.grey[400],
                        shape: const RoundedRectangleBorder()
                      )
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('name.'),
                    Container(
                      height: 12,
                      width: 120,
                      decoration: ShapeDecoration(
                        color: Colors.grey[400],
                        shape: const RoundedRectangleBorder()
                      )
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('classification.'),
                    Container(
                      height: 12,
                      width: 120,
                      decoration: ShapeDecoration(
                        color: Colors.grey[400],
                        shape: const RoundedRectangleBorder()
                      )
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('types.'),
                    Container(
                      height: 12,
                      width: 120,
                      decoration: ShapeDecoration(
                        color: Colors.grey[400],
                        shape: const RoundedRectangleBorder()
                      )
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('evolutions.'),
                    Container(
                      height: 12,
                      width: 120,
                      decoration: ShapeDecoration(
                        color: Colors.grey[400],
                        shape: const RoundedRectangleBorder()
                      )
                    ),
                  ]
                ),
              ]
            ))
          ]
        )
      ))
    );
  }

}