import 'package:flutter/material.dart';

class abcscreen extends StatefulWidget {
  final String val;
  const abcscreen({super.key,required this.val});

  @override
  State<abcscreen> createState() => _abcscreenState();
}

class _abcscreenState extends State<abcscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(widget.val),);
  }
}