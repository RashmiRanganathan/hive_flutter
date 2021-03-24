import 'package:flutter/material.dart';
import 'package:hive_flutter/common/route_constants.dart';
import 'package:hive_flutter/data/local_database/customer_local_datasource.dart';
import 'package:hive_flutter/data/models/customer_model.dart';

class CreateRecordScreen extends StatefulWidget {
  @override
  _CreateRecordScreenState createState() => _CreateRecordScreenState();
}

class _CreateRecordScreenState extends State<CreateRecordScreen> {
  final nameController = TextEditingController();
  final ratingController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ratingController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Customers'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: const InputDecoration(labelText: 'rating'),
                  controller: ratingController,
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
              ),
              const SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  final CustomerModel customer = CustomerModel(
                    name: nameController.text,
                    rating: int.parse(ratingController.text),
                    email: emailController.text,
                  );
                  CustomerLocalDatasource().insertOrUpdateItem(customer);
                  Navigator.of(context).pushNamed(RouteList.list);
                },
                child: const Text('Create'),
              )
            ],
          ),
        ),
      );
}
