import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomListTileRadio extends StatefulWidget {
  final String inputtext;
  final String radstr;
  final int radid;
  final Function(String) onChanged;
  const CustomListTileRadio({
    super.key,
    required this.radstr,
    required this.radid,
    required this.onChanged,
    required this.inputtext,
  });

  @override
  State<CustomListTileRadio> createState() => _CustomListTileRadioState();
}

class _CustomListTileRadioState extends State<CustomListTileRadio> {
  String radioButtonItem = 'Home Delivery';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio(
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        value: 1,
        groupValue: id,
        activeColor: kPrimaryColor,
        onChanged: (val) {
          setState(() {
            radioButtonItem = widget.radstr;
            id = widget.radid;
            widget.onChanged(radioButtonItem);
          });
        },
      ),
      horizontalTitleGap: 0.0,
      minVerticalPadding: 2.0,
      contentPadding: const EdgeInsets.only(left: 8.0),
      minLeadingWidth: 30,
      title: Text(
        widget.inputtext,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
