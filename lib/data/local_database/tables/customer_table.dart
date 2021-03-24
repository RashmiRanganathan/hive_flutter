import 'package:hive/hive.dart';
import 'package:hive_flutter/common/local_database_type_constants.dart';
import 'package:hive_flutter/data/models/customer_model.dart';

part 'customer_table.g.dart';

@HiveType(typeId: HiveTypeIdConstants.customerTableId)
class CustomerTable extends CustomerModel {
  @HiveField(1)
  String name;

  @HiveField(2)
  int rating;

  @HiveField(3)
  String email;

  CustomerTable({this.name, this.rating, this.email})
      : super(
          name: name,
          rating: rating,
          email: email,
        );

  factory CustomerTable.fromModel(CustomerModel model) => CustomerTable(
        name: model.name,
        rating: model.rating,
        email: model.email,
      );
}
