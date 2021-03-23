import 'package:flutter/material.dart';
import 'package:my_app/Assets/MyColors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

//Cartesian Chart

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  "Good Morning",
                  style: TextStyle(
                      color: Color.fromRGBO(243, 244, 247, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(left: 20),
              ),
              Container(
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 209, 0, 1),
                ),
                margin: EdgeInsets.only(right: 20),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: Color.fromRGBO(33, 39, 48, 1),
            ),
            height: 250,
            child: Column(
              children: [
                Container(
                    child: Text(
                  "Net Worth :",
                  style: TextStyle(
                    color: Color.fromRGBO(243, 244, 247, 1),
                    fontSize: 16,
                  ),
                )),
                Container(
                  height: 200,
                  child: SfCartesianChart(
                    primaryXAxis:
                        CategoryAxis(majorGridLines: MajorGridLines(width: 0)),
                    primaryYAxis: CategoryAxis(
                        majorGridLines: MajorGridLines(width: 0),
                        minimum: 20,
                        maximum: 50),
                    palette: [Color.fromRGBO(255, 209, 0, 1)],
                    series: <ChartSeries>[
                      LineSeries<SalesData, String>(
                        dataSource: [
                          SalesData('Jan', 35),
                          SalesData('Feb', 28),
                          SalesData('Mar', 34),
                          SalesData('Apr', 32),
                          SalesData('May', 40),
                          SalesData('Jun', 35),
                          SalesData('Jul', 28),
                          SalesData('Aug', 34),
                          SalesData('Sep', 32),
                          SalesData('Oct', 40),
                          SalesData('Nov', 34),
                          SalesData('Dec', 32),
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: Color.fromRGBO(33, 39, 48, 1),
            ),
            height: 250,
            child: Column(
              children: [
                Container(
                    child: Text(
                  "Expense Structure :",
                  style: TextStyle(
                    color: Color.fromRGBO(243, 244, 247, 1),
                    fontSize: 16,
                  ),
                )),
                Container(
                  height: 200,
                  child: SfCircularChart(
                    legend: Legend(
                        isVisible: true,
                        textStyle: TextStyle(color: MyColors.White)),
                    series: <DoughnutSeries>[
                      DoughnutSeries<ChartSampleData, String>(
                          dataSource: [
                            ChartSampleData('Food', 55, '55%'),
                            ChartSampleData('Rent', 31, '31%'),
                            ChartSampleData('Transport', 7, '7.7%'),
                            ChartSampleData('Coffee', 7, '3.7%'),
                            ChartSampleData('Shoppings', 10, '1.2%'),
                            ChartSampleData('Others', 12, '1.4%'),
                          ],
                          xValueMapper: (ChartSampleData sales, _) =>
                              sales.category,
                          yValueMapper: (ChartSampleData sales, _) =>
                              sales.value,
                          dataLabelMapper: (ChartSampleData data, _) =>
                              data.percentage,
                          dataLabelSettings:
                              DataLabelSettings(isVisible: true)),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class ChartSampleData {
  ChartSampleData(this.category, this.value, this.percentage);
  final String category;
  final double value;
  final String percentage;
}
