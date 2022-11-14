import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppLoadingPopup {
  Future<dynamic> show(
    BuildContext context, {
    String? text,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 1,
            sigmaY: 1,
          ),
          child: const Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child:Icon(
                Icons.downloading_outlined
              ),
            ),
          ),
        );
      },
    );
  }
}
