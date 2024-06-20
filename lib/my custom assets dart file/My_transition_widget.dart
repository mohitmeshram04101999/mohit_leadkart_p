

import 'dart:ui';

import 'package:flutter/material.dart';



class MySlideTr extends StatelessWidget {
  Offset? startPosition;
  Animation animation;
  Widget child;
  Curve? curve;
  bool revers;
  double intervel;
  MySlideTr({this.startPosition,this.curve,required this.animation,required this.child,this.intervel = .8,this.revers =false,super.key});

  @override
  Widget build(BuildContext context) {

    var tween = revers?Tween(begin: (startPosition==null)?Offset(-1,0):startPosition,end: Offset(0,0)): Tween(begin:(startPosition==null)?Offset(1,0):startPosition,end: Offset(0,0));

    return SlideTransition(
      position: animation.drive(tween.chain(CurveTween(curve: Interval(intervel,1,curve: curve??Curves.fastOutSlowIn)))),
      child: child,
    );
  }
}




class MyOffsetAnimation extends StatelessWidget {
  Animation animation;
  Widget child;
  Curve? curve;
  double intervel;
  MyOffsetAnimation({this.curve,required this.animation,required this.child,this.intervel = .3,super.key});

  @override
  Widget build(BuildContext context) {

    var tween = Tween<double>(begin: 0,end: 1);

    return FadeTransition(
      opacity: animation.drive(tween.chain(CurveTween(curve: Interval(intervel,1,curve: curve??Curves.fastOutSlowIn)))),
      child: child,
    );
  }
}



class MyRotationTransition extends StatelessWidget {
  double? rotations;
  Animation animation;
  Widget child;
  Curve? curve;
  bool revers;
  double intervel;
  MyRotationTransition({this.rotations,this.curve,required this.animation,required this.child,this.intervel = .8,this.revers =false,super.key});

  @override
  Widget build(BuildContext context) {

    Tween<double> tween = revers?Tween(begin: 0,end: rotations??1):Tween(begin:  rotations??1,end:0);

    return RotationTransition(
      turns: animation.drive(tween.chain(CurveTween(curve: Interval(intervel,1,curve: curve??Curves.fastOutSlowIn)))),
      child: child,
    );
  }
}