import 'package:flutter/material.dart';
import 'package:lesson_13/l15-shopUI/bags_info.dart';

class NewBagsInfo extends StatefulWidget {
  final BagsInfo bagBag;
  const NewBagsInfo({super.key, required this.bagBag});

  @override
  State<NewBagsInfo> createState() => _NewBagsInfoState();
}

class _NewBagsInfoState extends State<NewBagsInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Image(image: AssetImage(widget.bagBag.imageName))),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.bagBag.name,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
                  ),
                  const Text(
                    'Wallet with chain',
                    style: TextStyle(
                        fontSize: 14, color: Color(0xFF000000), fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'Style #36252 0YK0G 1000',
                    style: TextStyle(color: Color(0xFF848484)),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '\$${widget.bagBag.cost}',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 31,
                child: TextButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)))),
                        backgroundColor: MaterialStatePropertyAll(Color(0xFF000000))),
                    child: const Text(
                      'BUY NOW',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFFFBFBFB)),
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.bagBag.count++;
                  });
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Color(0xFF000000)))),
                  child: const Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Color(0xFF000000), fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
