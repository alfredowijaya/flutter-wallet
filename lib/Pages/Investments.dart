import 'package:flutter/material.dart';

class InvestmentPage extends StatefulWidget {
  @override
  _InvestmentPageState createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Text("Investment"),
      ),
    );
  }
}
