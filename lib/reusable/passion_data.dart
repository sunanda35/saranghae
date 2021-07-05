import 'package:flutter/material.dart';

typedef void PassionCallBack(bool val);

class PassionChoice extends StatelessWidget {
  final PassionCallBack onPassionChanged;
  PassionChoice(
      Key? key, this.onPassionChanged, this.selected, this.hobby, this.color);
  final bool selected;
  final Color color;
  final String hobby;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(hobby),
      labelStyle: TextStyle(
        color: selected ? color : Colors.black45,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      side: BorderSide(
        color: selected ? color : Colors.transparent,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      selectedShadowColor: color,
      backgroundColor: selected ? color : Colors.grey[200],
      pressElevation: 30.0,
      selected: selected,
      onSelected: (value) {
        onPassionChanged(value);
      },
    );
  }
}
