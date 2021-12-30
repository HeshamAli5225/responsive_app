import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AdaptiveIndicator extends StatelessWidget {
  TargetPlatform os;
  AdaptiveIndicator(this.os);

  @override
  Widget build(BuildContext context) {
    if (os == TargetPlatform.android) return CircularProgressIndicator();

    return CupertinoActivityIndicator();
  }
}
