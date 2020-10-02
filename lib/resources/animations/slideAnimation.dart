import 'package:flutter/cupertino.dart';

class SlidePageBuilder extends PageRouteBuilder {
  final Widget page;
  SlidePageBuilder({this.page})
      : super(
            pageBuilder: (context, animation, animation2) => page,
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              Animation<Offset> position =
                  Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
                      .animate(animation);
              return SlideTransition(
                position: position,
                child: child,
              );
            });
}
