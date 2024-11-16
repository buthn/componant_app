import 'package:componant_app/Componant/successCard/button_widget.dart';
import 'package:componant_app/Componant/successCard/text_widget.dart';
import 'package:flutter/material.dart';

class OrderSuccessCardWidget extends StatelessWidget {
  const OrderSuccessCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 28, 27, 26),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey[300]!, width: 2),
      ),
      child: Column(
        children: [
          Flexible(
              flex: 6,
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Image.asset(
                      "assets/images/successImage.png",
                      height: MediaQuery.sizeOf(context).height * 0.25,
                      width: MediaQuery.sizeOf(context).width * 0.25,
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 6, bottom: 6),
                        child: TextWidget(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(top: 6, bottom: 6),
                      child: TextWidget(
                        fontSize: 12,
                        textColor: Colors.white54,
                        text:
                            "سوف نرسل نسخه بملخص الطلب الى الإيميل التالي\n Bremore@coffe.com",
                      ),
                    ),
                  ),
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(top: 6, bottom: 6),
                      child: TextWidget(
                        fontSize: 12,
                        textColor: Color.fromARGB(255, 150, 120, 42),
                        text: "رقم الفاتورة #378864085",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )),
          const Flexible(
            flex: 2,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: ButtonSuccessCardWidget(),
                  ),
                  SizedBox(height: 10),
                  Flexible(
                    child: ButtonSuccessCardWidget(
                      buttonColor: Colors.transparent,
                      sideColor: Color.fromARGB(255, 72, 71, 69),
                      textColor: Colors.white,
                      text: "العودة الى الرئيسية",
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
