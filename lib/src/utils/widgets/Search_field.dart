import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class CustomSearchbar extends StatefulWidget {
  @override
  _CustomSearchbarState createState() => _CustomSearchbarState();
}

class _CustomSearchbarState extends State<CustomSearchbar> {
  final List<String> _suggestions = [
    'United States',
    'Germany',
    'Washington',
    'Paris',
    'Jakarta',
    'Australia',
    'India',
    'Czech Republic',
    'Lorem Ipsum',
  ];

  final List<String> _statesOfIndia = [
    'Andhra Pradesh',
    'Assam',
    'Arunachal Pradesh',
    'Bihar',
    'Goa',
    'Gujarat',
    'Jammu and Kashmir',
    'Jharkhand',
    'West Bengal',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Orissa',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Tripura',
    'Uttaranchal',
    'Uttar Pradesh',
    'Haryana',
    'Himachal Pradesh',
    'Chhattisgarh'
  ];
  final _formKey = GlobalKey<FormState>();

  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            width: 200,
            child: SearchField<String>(
              itemHeight: 50.0,
              // offset: Offset(100, 0),
              hasOverlay: true,
              suggestions: [
                for (int i = 0; i < 10; i++)
                  {
                    'item': 'item$i',
                    'value': 'value$i',
                  },
              ]
                  .map(
                    (e) => SearchFieldListItem<String>(
                      e['item'] ?? '',
                      item: e['item'],
                      child: Container(
                        color: Colors.red,
                        width: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 300),
                        child: Text(e['value'] ?? ''),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchField(
              suggestionItemDecoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                gradient: LinearGradient(colors: [
                  Color(0xff70e1f5),
                  Color(0xffffd194),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              suggestions:
                  _suggestions.map((e) => SearchFieldListItem(e)).toList(),
              suggestionState: Suggestion.hidden,
              searchInputDecoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                labelText: 'SearchField',
                border: OutlineInputBorder(),
              ),
              // hasOverlay: false,
              hint: 'SearchField example 4',
              maxSuggestionsInViewPort: 6,
              suggestionDirection: SuggestionDirection.up,
              itemHeight: 45,
              onSuggestionTap: (x) {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.3,
                vertical: 10),
            child: ElevatedButton(
                onPressed: () {
                  _formKey.currentState!.validate();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Validate Field 2'),
                )),
          ),
        ],
      ),
    );
  }
}

extension FurdleTitle on String {
  Widget toTitle({double boxSize = 25}) {
    return Material(
      color: Colors.transparent,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        for (int i = 0; i < length; i++)
          Container(
              height: boxSize,
              width: boxSize,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ) +
                  EdgeInsets.only(bottom: i.isOdd ? 8 : 0),
              child: Text(
                this[i].toUpperCase(),
                style: const TextStyle(
                    height: 1.1,
                    letterSpacing: 2,
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              decoration: this[i] == ' '
                  ? null
                  : BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: Colors.black,
                          offset: Offset(0, 1)),
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: Colors.black,
                          offset: Offset(2, -1)),
                    ], color: Colors.blueAccent))
      ]),
    );
  }
}
