import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color _color;
  final Widget _child;

  const ReusableCard(this._color, this._child);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: _child,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
