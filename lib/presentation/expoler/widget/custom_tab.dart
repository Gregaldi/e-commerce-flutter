// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String label;

  const CustomTab({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: const TextStyle(fontSize: 10.0, overflow: TextOverflow.ellipsis),
        maxLines: 1,
      ),
    );
  }
}
