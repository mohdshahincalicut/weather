import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  final double width;
  final double height;
  final String hearderText;

  const ContainerPage(
      {super.key,
      required this.width,
      required this.height,
      required this.hearderText});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.10),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: Colors.white.withOpacity(.10), width: 1)),
      child: Center(
          child: Text(
        widget.hearderText,
        style: TextStyle(color: Colors.white.withOpacity(0.70)),
      )),
    );
  }
}
