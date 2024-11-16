import 'package:flutter/material.dart';

class CardComponant extends StatelessWidget {
  final String imagePath;
  final String abbreviationOfCup;
  final String title;
  final String rate;
  final String price;
  final String logo;
  final String brandName;
  const CardComponant({
    super.key,
    this.imagePath = "assets/images/coffee.png",
    this.abbreviationOfCup = "10 oz",
    this.title = "حبوب قهوة كاملة 1 كجم\n(super crema) من لافاتزا",
    this.rate = "4.7",
    this.price = "\$ 17.47",
    this.logo = "assets/images/logo.png",
    this.brandName = "كوفي كرايندرز",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey[300]!, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(children: [
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.grey[300],
                      child: Image.asset(
                        imagePath,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(40)),
                      ),
                      width: MediaQuery.sizeOf(context).width * 0.18,
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      child: Text(
                        abbreviationOfCup,
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * -0.01,
                    left: MediaQuery.of(context).size.width * -0.00,
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.10,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.shopping_cart_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                title,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Flexible(
                        child: Text(
                          rate,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                          child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 15,
                      ))
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    price,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Divider(
              color: Colors.grey.shade300,
              thickness: 2,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(logo),
                    )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    brandName,
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
