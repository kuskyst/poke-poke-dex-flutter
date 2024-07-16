import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: ShapeDecoration(
                color: Colors.grey[400],
                shape: const CircleBorder()
              )
            ),
            title: Container(
              height: 16,
              decoration: ShapeDecoration(
                color: Colors.grey[400],
                shape: const RoundedRectangleBorder()
              )
            ),
            subtitle: Container(
              height: 16,
              decoration: ShapeDecoration(
                color: Colors.grey[400],
                shape: const RoundedRectangleBorder()
              )
            ),
          );
        }
      )
    );
  }


}