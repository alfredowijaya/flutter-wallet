import 'package:flutter/material.dart';

void main() {
  runApp(TrasnsactionsPage());
}

class TrasnsactionsPage extends StatefulWidget {
  @override
  _TrasnsactionsPageState createState() => _TrasnsactionsPageState();
}

class _TrasnsactionsPageState extends State<TrasnsactionsPage> {
  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Text("Transactions"),
    ));
  }
}
