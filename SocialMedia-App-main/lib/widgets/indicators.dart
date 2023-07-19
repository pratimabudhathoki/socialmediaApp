import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Center circularProgress(context) {
  return Center(
    child: SpinKitFadingCircle(
      size: 40.0,
      color: Theme.of(context).colorScheme.secondary,
    ),
  );
}

Container linearProgress(context) {
  return Container(
    child: LinearProgressIndicator(
      valueColor:
          AlwaysStoppedAnimation(Theme.of(context).colorScheme.secondary),
    ),
  );
}

Shimmer getsimmerloading() {
  return Shimmer.fromColors(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.white,
                );
              },
            ),
          ),
        ],
      ),
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!);
}
