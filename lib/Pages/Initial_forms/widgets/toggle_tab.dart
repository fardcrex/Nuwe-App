import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class ToggleBarNuwe extends StatelessWidget {
  final String title;
  final int? selectedIndex;
  final Function() onChange;
  const ToggleBarNuwe({Key? key, required this.title, this.selectedIndex, required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
        FlutterToggleTab(
          width: 18,
          height: 22,
          borderRadius: 5,

          unSelectedBackgroundColors: [Colors.white.withOpacity(0.1)],
          initialIndex: 1,
          selectedTextStyle: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
          unSelectedTextStyle:
              TextStyle(color: Theme.of(context).primaryColor, fontSize: 12, fontWeight: FontWeight.w400),
          labels: const ['Sí', 'No'],
          //icons: [Icons.person, Icons.pregnant_woman],
          selectedLabelIndex: (index) => onChange(),
        ),
      ],
    );
  }
}
