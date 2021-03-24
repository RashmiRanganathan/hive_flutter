import 'package:hive_flutter/common/database_util.dart';
import 'package:hive_flutter/data/local_database/base_local_database.dart';
import 'package:hive_flutter/data/local_database/tables/customer_table.dart';
import 'package:hive_flutter/data/models/customer_model.dart';

class CustomerLocalDatasource
    extends BaseLocalDataSource<CustomerTable, CustomerModel> {
  CustomerLocalDatasource() : super(boxName: 'customer') {
    DatabaseUtil.registerAdapter<CustomerTable>(CustomerTableAdapter());
  }

  Future<CustomerModel> getFormattedItem(String key) async {
    final CustomerTable customer = await get(key);
    if (customer != null) {
      return CustomerTable.fromModel(customer);
    }
    return null;
  }

  @override
  Future<List<CustomerModel>> getFormattedData() async {
    final List<CustomerTable> data = await getAll();
    return data.map((customer) => CustomerModel.fromTable(customer)).toList();
  }

  Future<void> insertOrUpdateItem(CustomerModel customer) async {
    await put(customer.email, CustomerTable.fromModel(customer));
  }
}
