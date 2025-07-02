import 'package:flutter/material.dart';

class StyleButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color textColor;
  final Icon? icon;
  const StyleButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.textColor,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return icon == null
        ? Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: bgColor,
                ),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ),
            ),
          )
        : Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: bgColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon!,
                    SizedBox(width: 6),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                        fontSize: 16,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
