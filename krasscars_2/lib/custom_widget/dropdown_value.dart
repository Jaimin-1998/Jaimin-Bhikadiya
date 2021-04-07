import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';

class CustomDropDown extends StatelessWidget {
  final String value;
  final String hint;
  final List<DropdownMenuItem> items;
  final Function onChanged;

  const CustomDropDown({
    Key key,
    this.value,
    this.hint,
    this.items,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: DropdownButton<String>(
              value: value,
              hint: Text(
                hint,
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: AppFonts.size_medium,
                    fontWeight: FontWeight.normal),
                overflow: TextOverflow.ellipsis,
              ),
              style: Theme.of(context).textTheme.title,
              items: items,
              onChanged: (item) {
                onChanged(item);
              },
              isExpanded: true,
              underline: Container(),
              icon: Icon(Icons.keyboard_arrow_down),
            ),
          ),
        ),
      ],
    );
  }
}