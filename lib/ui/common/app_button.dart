import 'package:flutter/cupertino.dart';

import '../../style.dart';

class AppButton extends StatelessWidget {
  final EdgeInsets padding;
  final Color backgroundColor;
  final Widget child;
  final CallbackAction? onClick;

  const AppButton({super.key, required this.padding, required this.child, this.onClick, required this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: child,
        )
    );
  }

}