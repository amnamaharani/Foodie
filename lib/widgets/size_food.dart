import 'package:flutter/material.dart';

class SizeFood extends StatefulWidget {
  final String size;
  final int index;

  SizeFood({
    this.size,
    this.index,
});

  @override
  _SizeFoodState createState() => _SizeFoodState();

}

class _SizeFoodState extends State<SizeFood>{
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = widget.index;
          });
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            color: selectedIndex == widget.index
                ? Color(0xff11AC6A) : Color(0xffF6F7FB),
          ),
          child: Center(
            child: Text(
              widget.size,
              style: TextStyle(
                fontSize: 24,
                color: selectedIndex == widget.index
                    ? Color(0xffF6F7FB) : Color(0xff202020),
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      );
    }
}