import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleProgressBar extends CustomPainter{

  double currentprogress;

  CircleProgressBar(this.currentprogress);

  @override
  void paint(Canvas canvas, Size size){

    // Desenho da base do circulo
  Paint outerCircle = Paint()
        ..strokeWidth = 7
        ..color = Colors.grey
        ..style = PaintingStyle.stroke;

  Paint completeCircle = Paint()
        ..strokeWidth = 7
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

      Offset center = Offset(size.width/2, size.height/2);
      double radius = min(size.width/2, size.height/2) - 50;

      canvas.drawCircle(center, radius, outerCircle); //Desenha o circulo sem efeito

      double angle = 2 * pi * (currentprogress/100);

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi/2, angle, false, completeCircle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelgate){
    return true;
  }
}
