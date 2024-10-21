import 'package:flutter/material.dart';
import 'package:pr_7/models/services.dart';
import 'package:pr_7/ui/service_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 48.0,
            left: 27.0,
            right: 27.0
        ),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only( bottom: 30.0),
              child:  Text('Каталог услуг',
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
              itemCount: services.length,

              itemBuilder: (BuildContext context, int index) {
                return ServiceUi(service: services[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
