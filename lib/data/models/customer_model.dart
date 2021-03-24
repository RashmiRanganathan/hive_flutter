import 'package:hive_flutter/data/local_database/tables/customer_table.dart';

class CustomerModel {
  final String name;
  final int rating;
  final String email;

  CustomerModel({
    this.name,
    this.rating,
    this.email,
  });

  factory CustomerModel.fromTable(CustomerTable table) => CustomerModel(
        name: table.name,
        rating: table.rating,
        email: table.email,
      );
}
