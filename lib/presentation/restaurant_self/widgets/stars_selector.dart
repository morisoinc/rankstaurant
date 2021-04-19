import 'package:flutter/material.dart';

class StarsSelector extends StatefulWidget {
  const StarsSelector({this.starsSelected = 0, required this.onChanged});

  final int starsSelected;
  final Function(int starsSelected) onChanged;

  @override
  _StarsSelectorState createState() => _StarsSelectorState();
}

class _StarsSelectorState extends State<StarsSelector> {
  int starsSelected = 0;

  @override
  Widget build(BuildContext context) {
    starsSelected = widget.starsSelected;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => setState(() {
            starsSelected = 1;
            widget.onChanged(starsSelected);
          }),
          child: Icon(
            starsSelected >= 1 ? Icons.star : Icons.star_outline,
            size: 24,
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () => setState(() {
            starsSelected = 2;
            widget.onChanged(starsSelected);
          }),
          child: Icon(
            starsSelected >= 2 ? Icons.star : Icons.star_outline,
            size: 24,
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () => setState(() {
            starsSelected = 3;
            widget.onChanged(starsSelected);
          }),
          child: Icon(
            starsSelected >= 3 ? Icons.star : Icons.star_outline,
            size: 24,
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () => setState(() {
            starsSelected = 4;
            widget.onChanged(starsSelected);
          }),
          child: Icon(
            starsSelected >= 4 ? Icons.star : Icons.star_outline,
            size: 24,
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () => setState(() {
            starsSelected = 5;
            widget.onChanged(starsSelected);
          }),
          child: Icon(
            starsSelected == 5 ? Icons.star : Icons.star_outline,
            size: 24,
          ),
        ),
      ],
    );
  }
}
