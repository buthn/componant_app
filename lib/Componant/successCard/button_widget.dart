import 'package:flutter/material.dart';

class ButtonSuccessCardWidget extends StatelessWidget {
  final Color sideColor;
  final Color buttonColor;
  final Color textColor;
  final String text;
  final void Function()? onPressed;
  const ButtonSuccessCardWidget(
      {super.key,
      this.sideColor = Colors.transparent,
      this.buttonColor = const Color.fromARGB(255, 169, 244, 177),
      this.textColor = Colors.black,
      this.text = "معاينة الطلب",
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(buttonColor),
          foregroundColor: WidgetStatePropertyAll(textColor),
          fixedSize: const WidgetStatePropertyAll(Size(double.infinity, 50)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            side: BorderSide(color: sideColor),
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
