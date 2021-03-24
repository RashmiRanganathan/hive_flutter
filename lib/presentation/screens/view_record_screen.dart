import 'package:flutter/material.dart';
import 'package:hive_flutter/common/route_constants.dart';
import 'package:hive_flutter/data/local_database/customer_local_datasource.dart';
import 'package:hive_flutter/data/models/customer_model.dart';

class ViewRecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Customers'),
        ),
        body: Customers(),
        floatingActionButton: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal,
          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context).pushNamed(RouteList.create),
          ),
        ),
      );
}

class Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: CustomerLocalDatasource().getFormattedData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          List<CustomerModel> customers = [];
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              break;
            default:
              if (snapshot.hasError) {
                break;
              } else {
                customers = snapshot.data;
                customers ??= [];
              }
          }

          if (customers.isNotEmpty) {
            return ListView.separated(
              itemCount: customers.length,
              itemBuilder: (_, int index) {
                return ListTile(
                  title: Text(customers[index].name),
                  leading: Text(customers[index].rating.toString()),
                  subtitle: Text(customers[index].email),
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            );
          } else {
            return Center(child: Text('Empty'));
          }
        },
      );
}
