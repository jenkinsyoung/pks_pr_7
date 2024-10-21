import 'package:flutter/material.dart';
import 'package:pr_7/models/services.dart';
import 'package:pr_7/utils/word_functions.dart';

class BasketElementUi extends StatefulWidget {
  const BasketElementUi({super.key, required this.service, required this.onUpdatePrice,
  required this.onDelete});
  final Service service;
  final Function(int) onUpdatePrice;
  final Function(int) onDelete;
  @override
  State<BasketElementUi> createState() => _BasketElementUiState();
}

class _BasketElementUiState extends State<BasketElementUi> {
  void _increase() {
    setState(() {
      basketCount[basket.indexOf(widget.service)]++;
      widget.onUpdatePrice(basketCount[basket.indexOf(widget.service)] * widget.service.price);
    });
  }

  void _decrease() {
    setState(() {
      if (basketCount[basket.indexOf(widget.service)] > 1) {
        basketCount[basket.indexOf(widget.service)]--;
        widget.onUpdatePrice(basketCount[basket.indexOf(widget.service)] * widget.service.price);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 138,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(224, 224, 224, 1.0),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 275,
                height: 40,
                child: Text(widget.service.name,
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 20/16,
                  letterSpacing: -0.32,
                ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    widget.onDelete(basket.indexOf(widget.service));
                  });
                },
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:  AssetImage('lib/assets/icons/delete.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${widget.service.price} ₽',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 24/17,
                )
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text('${basketCount[basket.indexOf(widget.service)]} ${patient(basketCount[basket.indexOf(widget.service)])}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        height: 20/15,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    width: 64,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color.fromRGBO(245, 245, 249, 1.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: _decrease,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/assets/icons/minus.png'),
                                fit: BoxFit.cover,
                              )
                            ),
                          )
                        ),
                        Container(
                          width: 0,
                          height: 16,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(235, 235, 235, 1.0),
                              width: 1.0,
                            )
                          ),
                        ),
                        GestureDetector(
                          onTap: _increase,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('lib/assets/icons/plus.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          )
                        )
                      ],
                    )
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
