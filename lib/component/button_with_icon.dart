import 'package:dddj/utils/constants.dart';
import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon(
      {Key? key,
      required this.icon,
      required this.btnText,
      required this.onTap})
      : super(key: key);

  final IconData icon;
  final String btnText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kThemeYellow),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  icon,
                  size: 18,
                  color: kThemeYellow,
                ),
              ),
              Text(
                btnText,
                style: const TextStyle(
                  color: kThemeYellow,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
