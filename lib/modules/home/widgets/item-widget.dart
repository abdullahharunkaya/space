import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const ItemWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
