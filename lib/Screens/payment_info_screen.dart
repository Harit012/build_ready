import 'package:build_ready/data/dummy_url.dart';
import 'package:build_ready/model/model_data.dart';
import 'package:build_ready/widgets/builders_navigator.dart';
import 'package:flutter/material.dart';

class PaymentInfoScreen extends StatelessWidget {
  PaymentInfoScreen({super.key});

  final int noOfCustomers = 10;
  final int noOfFields = 5;
  final List<String> columns = [
    'Flat no',
    'Name',
    'mobile no ',
    'Paid Amount',
    'Remaining Amount',
    'Total Amount'
  ];

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
              label: Text(
            column,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )))
      .toList();

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [
          user.flatNo,
          user.name,
          user.mobile,
          user.paidAmount,
          user.remainingAmount,
          user.totalPrice
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(Text(
            '$data',
            style: const TextStyle(fontSize: 15),
          )))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA28B85),
        title:  BuildersNavigator(
          title: 'Payment Information',
        ),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: DataTable(
              columns: getColumns(columns),
              rows: getRows(users),
            ),
          ),
        ),
      ),
    );
  }
}
