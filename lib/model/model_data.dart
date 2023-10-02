// import 'package:flutter/material.dart';

// List<String> flatTypes = ["1BHK", "2BHK", "3BHK", "4BHK"];

class User {
  User(this.flatNo, this.name, this.mobile, this.paidAmount, this.totalPrice);

  final String flatNo;
  final String name;
  final String mobile;
  final double paidAmount;
  late double remainingAmount = totalPrice - paidAmount;
  final double totalPrice;
}
