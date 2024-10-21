import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pr_7/pages/basket_page.dart';
import 'package:pr_7/pages/home_page.dart';
import 'package:pr_7/pages/profile_page.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BasketPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 0
                  ? 'lib/assets/icons/home_blue.svg'
                  : 'lib/assets/icons/home_gray.svg',
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 1
                  ? 'lib/assets/icons/cart_blue.svg'
                  : 'lib/assets/icons/cart_gray.svg',
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 2
                  ? 'lib/assets/icons/user_blue.svg'
                  : 'lib/assets/icons/user_gray.svg',
            ),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(26, 111, 238, 1.0),
        selectedLabelStyle: TextStyle(
          color: Color.fromRGBO(26, 111, 238, 1.0),
          fontSize: 12,
          height: 16/12,
          fontWeight: FontWeight.w300,
        ),
        unselectedLabelStyle: TextStyle(
          color: Color.fromRGBO(137, 138, 141, 1.0),
          fontSize: 12,
          height: 16/12,
          fontWeight: FontWeight.w300,
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}

