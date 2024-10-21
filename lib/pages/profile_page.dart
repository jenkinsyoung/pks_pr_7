import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 48.0,
          left: 27.0,
          right: 27.0,
          bottom: 30,
        ),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only( bottom: 22.0),
              child:  Text('Эдуард',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 28/24,
                    letterSpacing: 0.33,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 16.0),
              child: Text('+7 900 800-55-33',
                style: TextStyle(
                  color: Color.fromRGBO(137, 138, 141, 1.0),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 16/15,
                  letterSpacing: 0.33,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 48.0),
              child: Text('email@gmail.com',
                style: TextStyle(
                  color: Color.fromRGBO(137, 138, 141, 1.0),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 16/15,
                  letterSpacing: 0.33,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 335,
                  height: 64,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/icons/list.png'),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Мои заказы',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            height: 24/17,
                            letterSpacing: 0,
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 335,
                  height: 64,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/assets/icons/card.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Медицинские карты',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              height: 24/17,
                              letterSpacing: 0,
                            )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 335,
                  height: 64,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/assets/icons/address.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Мои адреса',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              height: 24/17,
                              letterSpacing: 0,
                            )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 335,
                  height: 64,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/assets/icons/settings.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Настройки',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              height: 24/17,
                              letterSpacing: 0,
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Center(
                child: SizedBox(

                  height: 152,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(onTap: (){},
                          child: Text('Ответы на вопросы',
                          style: TextStyle(
                            color: Color.fromRGBO(147, 147, 150, 1.0),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            height: 20/15,
                          )
                        )
                      ),
                      GestureDetector(onTap: (){},
                          child: Text('Политика конфиденциальности',
                              style: TextStyle(
                                color: Color.fromRGBO(147, 147, 150, 1.0),
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                height: 20/15,
                              )
                          )
                      ),
                      GestureDetector(onTap: (){},
                          child: Text('Пользовательское соглашение',
                              style: TextStyle(
                                color: Color.fromRGBO(147, 147, 150, 1.0),
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                height: 20/15,
                              )
                          )
                      ),
                      GestureDetector(onTap: (){},
                          child: Text('Выход',
                              style: TextStyle(
                                color: Color.fromRGBO(253, 53, 53, 1.0),
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                height: 20/15,
                              )
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
