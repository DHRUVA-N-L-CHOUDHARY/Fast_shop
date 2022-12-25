import 'package:flutter/material.dart';

class CustomListTileAddress extends StatelessWidget {
  final String inputtext;
  final String inputsubtext;
  const CustomListTileAddress({
    super.key,
    required this.inputtext,
    required this.inputsubtext,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const Border(
        bottom: BorderSide(
            color: Colors.black12, style: BorderStyle.solid, width: 0.25),
      ),
      trailing: const IconButton(
        padding: EdgeInsets.all(0.0),
        onPressed: null,
        icon: Icon(
          Icons.arrow_forward_ios_outlined,
        ),
      ),
      horizontalTitleGap: 0.0,
      minVerticalPadding: 2.0,
      contentPadding: const EdgeInsets.only(left: 8.0),
     leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.location_on_outlined),
          ),
          minLeadingWidth: 30, 
      title: Text(
        inputtext,
        // style:  const TextStyle(
        //   color: Colors.black,
        //   fontWeight: FontWeight.w300,
        // ),
      ),
      subtitle: Text(
        inputsubtext,
      ),
    );
  }
}
