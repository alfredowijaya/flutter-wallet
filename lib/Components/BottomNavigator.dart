import 'package:flutter/material.dart';
import 'package:my_app/Pages/Budgets.dart';
import 'package:my_app/Pages/Investments.dart';
import 'package:my_app/Pages/Overview.dart';
import 'package:my_app/Pages/Transactions.dart';
import 'package:my_app/Assets/MyColors.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  BottomNavigatorState createState() => BottomNavigatorState();
}

class BottomNavigatorState extends State<BottomNavigatorPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _pageOptions = <Widget>[
    OverviewPage(),
    TrasnsactionsPage(),
    InvestmentPage(),
    BudgetPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 29, 36, 1),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Overview',
            backgroundColor: Color.fromRGBO(17, 20, 24, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            label: 'Transactions',
            backgroundColor: Color.fromRGBO(17, 20, 24, 1),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'Investments',
              backgroundColor: Color.fromRGBO(17, 20, 24, 1)),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Budgets',
            backgroundColor: Color.fromRGBO(17, 20, 24, 1),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(255, 209, 0, 1),
        unselectedItemColor: Color.fromRGBO(219, 223, 230, 1),
      ),
    );
  }
}
