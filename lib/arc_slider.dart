library arc_slider;
import 'package:flutter/material.dart';
import 'package:arc_slider/Arcpainter.dart';

class ArcSlider extends StatefulWidget {
  final double width;
  final double height;
  final double min;
  final double max;
  final Function(double) onchange;
  final double trackWidth;
  final double thumbWidth;
  final Color trackColor;
  final Color fillColor;
  final Color dotColor;
  final Color thumbColor;

  ArcSlider({this.height=200,this.width=400,this.min=0,this.max=100,this.onchange,this.thumbWidth=42,this.trackWidth=22,this.trackColor=Colors.white54,this.thumbColor=Colors.white,this.dotColor=Colors.black,this.fillColor=Colors.black});
  @override
  _ArcSliderState createState() => _ArcSliderState();
}

class _ArcSliderState extends State<ArcSlider> {
  double dragpos;
  double dragpercent;
  double per;
  double changes=0;

  double percentageToValue(double percentage, double min, double max) {
    return ((max - min) / 100) * percentage + min;
  }


  void _updateDragPosition(Offset val){
    double ne = 0;
    if(val.dx <=0){
      ne =0;
    }else if(val.dx >=widget.width){
      ne =widget.width;
    }else{
      ne=val.dx;
    }
    setState(() {
      dragpos =ne;
      dragpercent= dragpos / widget.width;
      per = double.parse((dragpercent*103).toString().split(".")[0]);

    });
    if(per == 0){
      setState(() {
        changes = 0;

      });

    }


    else{
      setState(() {
        changes = dragpercent*2.1;

      });

    }


    widget.onchange((percentageToValue(per, widget.min, widget.max)));
  }

  void _onDragUpdate(BuildContext context,DragUpdateDetails update){
    RenderBox box = context.findRenderObject();
    Offset offset = box.globalToLocal(update.globalPosition);
    _updateDragPosition(offset);
  }


  @override
  Widget build(BuildContext context) {
    return Container(

      child: GestureDetector(
        child: Container(
          child: CustomPaint(
            foregroundPainter: Abz(pos: changes,trackWidth: widget.trackWidth,fillColor: widget.fillColor,trackColor: widget.trackColor,dotColor: widget.dotColor,thumbColor: widget.thumbColor,thumbWidth: widget.thumbWidth),


          ),
          width: widget.width,
          height:widget.height,
          color: Colors.yellow,
        ),
        onHorizontalDragUpdate: (DragUpdateDetails update)=>_onDragUpdate(context, update),



      ),
    );
  }
}



