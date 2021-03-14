import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Abz extends CustomPainter{
  final double pos;
  final double thumbpos;
  final double trackWidth;
  final double thumbWidth;
  Color trackColor= Colors.white.withOpacity(0.5);
  Color fillColor;
  Color dotColor;
  Color thumbColor;
  Abz({this.pos=0,this.thumbpos=0,this.trackColor,this.dotColor=Colors.black,this.fillColor=Colors.black,this.thumbColor=Colors.white,this.trackWidth=22,this.thumbWidth=42});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint arc = Paint()
      ..strokeWidth = trackWidth
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Paint arcfill = Paint()
      ..strokeWidth = trackWidth
      ..color = fillColor
      ..strokeCap = StrokeCap.round

      ..style = PaintingStyle.stroke;
    Paint temp = Paint()
      ..strokeWidth = thumbWidth
      ..color = thumbColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    Paint dot = Paint()
      ..strokeWidth = 10
      ..color = dotColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;


    canvas.drawArc(Rect.fromLTWH(-16,35,size.width/0.92,size.height/0.6), -math.pi+0.5, math.pi-1, false, arc);
    canvas.drawArc(Rect.fromLTWH(-16,35,size.width/0.92,size.height/0.6), -math.pi+0.5, math.pi-(3.1-pos), false, arcfill);
    canvas.drawArc(Rect.fromLTWH(-16,35,size.width/0.92,size.height/0.6), -math.pi+(pos)+0.5, math.pi-3.12, false, temp);
    canvas.drawArc(Rect.fromLTWH(-16,35,size.width/0.92,size.height/0.6), -math.pi+(pos)+0.514, math.pi-3.15, false, dot);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
