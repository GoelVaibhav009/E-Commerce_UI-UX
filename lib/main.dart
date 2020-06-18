import 'package:flutter/material.dart';
import 'shop_list.dart';
import 'cart_list.dart';
import 'Screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => LoginPage(),
        '/home': (_) => ShopListWidget(),
        '/cart': (_) => CartListWidget(),
      },
    );
  }
}
