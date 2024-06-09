import 'package:flutter/material.dart';
import 'package:odyssey/constants/colors.dart';

class IconWithAnimatedLabel extends StatefulWidget {
  const IconWithAnimatedLabel({
    required this.iconImage,
    required this.labelText,
    super.key});

    final String iconImage;
    final String labelText;

  @override
  _IconWithAnimatedLabelState createState() => _IconWithAnimatedLabelState();
}

class _IconWithAnimatedLabelState extends State<IconWithAnimatedLabel> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Image.asset(widget.iconImage, color: Constants.mainColor, scale: 8),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: _isExpanded ? 200 : 0,
            height: s.height * 0.05,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Constants.mainColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _isExpanded ? 1 : 0,
              child: Center(
                child: SelectableText(
                  widget.labelText,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      );
  }
}

