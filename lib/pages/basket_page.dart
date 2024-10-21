import 'package:flutter/material.dart';
import 'package:pr_7/models/services.dart';
import 'package:pr_7/ui/basket_element_ui.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  int totalPrice = 0;

  @override
  void initState() {
    super.initState();
    totalPrice = _calculateTotalPrice();
  }

  int _calculateTotalPrice() {
    int total = 0;
    for (var item in basket) {
      total += item.price * basketCount[basket.indexOf(item)];
    }
    return total;
  }

  void _updateTotalPrice(int priceChange) {
    setState(() {
      totalPrice += priceChange;
    });
  }
  void _deleteService(int index){
    setState(() {
      basketCount.removeAt(index);
      basket.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: basket.isEmpty ? Padding(
        padding: const EdgeInsets.only(
          top: 48.0,
          left: 27.0,
          right: 27.0,
          bottom: 30,
        ),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only( bottom: 30.0),
              child:  Text('Корзина',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 28/24,
                    letterSpacing: 0.33,
                  )),
            ),
            Center(child: Text('Ваша корзина пуста',
              style: TextStyle(
                fontSize: 16,
              )
            )
            ),
          ]
        )
      )
          : Padding(
        padding: const EdgeInsets.only(
            top: 48.0,
            left: 27.0,
            right: 27.0,
            bottom: 30,
        ),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only( bottom: 30.0),
              child:  Text('Корзина',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 28/24,
                    letterSpacing: 0.33,
                  )),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: basket.length,
              itemBuilder: (BuildContext context, int index) {
                return BasketElementUi(service: basket[index],
                  onUpdatePrice: _updateTotalPrice,
                  onDelete: _deleteService);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Сумма',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 28/20,
                      letterSpacing: 0.38,
                    )
                  ),
                  Text('${_calculateTotalPrice()} ₽',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 28/20,
                      letterSpacing: 0.38,
                    )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: basket.length == 1 ? 306.0 : basket.length == 2? 152 : 40),
              child: Container(
                width: 335,
                height: 56,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(26, 111, 238, 1.0),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Перейти к оформлению заказа',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      height: 24/17,
                    )
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
