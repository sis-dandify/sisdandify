import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssistantButton extends StatefulWidget {
  final String image;
  final String label;
  final bool selected;
  final void Function(String) onTap;

  const AssistantButton({
    super.key,
    required this.image,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  State<StatefulWidget> createState() {
    return _AssistantButtonState();
  }
}

class _AssistantButtonState extends State<AssistantButton> {

  selectButton() {
    widget.onTap(widget.label);
  }

  @override
  Widget build(context) {
    return Visibility(
      visible: widget.label != '',
      child: Container(
        margin: const EdgeInsets.only(right: 20.0, left: 20.0),
        child: GestureDetector(
          onTap: selectButton,
          child: Column(
            children: [
              SvgPicture.asset(
                widget.image,
                width: 60,
                color: widget.selected ? Colors.black : Colors.grey,
              ),
              const SizedBox(height: 10),
              Text(
                widget.label,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: widget.selected ? Colors.black : Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
