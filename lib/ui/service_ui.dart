import 'package:flutter/material.dart';
import 'package:pr_7/models/services.dart';
import 'package:pr_7/utils/word_functions.dart';

class ServiceUi extends StatefulWidget {
  const ServiceUi({super.key, required this.service});
  final Service service;
  @override
  State<ServiceUi> createState() => _ServiceUiState();
}

class _ServiceUiState extends State<ServiceUi> {
  void _addService(Service service){
    if(basket.contains(service)){
      basketCount[basket.indexOf(service)] = basketCount[basket.indexOf(service)] + 1;
    }
    else{
      basket.add(service);
      basketCount.add(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromRGBO(224, 224, 224, 1.0),
          width: 1.0,
        )
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 303,
            height: 40,
            child: Text(widget.service.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              height: 1.25,
              letterSpacing: -0.32,
             ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 48,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${widget.service.dayCount} ${days(widget.service.dayCount)}',
                      style: const TextStyle(
                          color: Color.fromRGBO(147, 147, 150, 1.0),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 20/14,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text('${widget.service.price} ₽',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          height: 24/17,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _addService(widget.service);
                  });
                },
                child: Container(
                  width: 96,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromRGBO(26, 111, 238, 1.0),
                    ),
                    color: const Color.fromRGBO(26, 111, 238, 1.0),
                  ),
                  child: const Center(child:
                  Text('Добавить',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ))
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
