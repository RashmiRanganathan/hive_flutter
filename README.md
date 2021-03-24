# hive_flutter

Illutration of hive in flutter with extendable classes.
Create your table and datasource in just 5 mins

`Flutter version: 1.22.5`
## Why Hive ?
High Performance ( Writing 1000 records -​ ​28ms, Reading 1000 records - 1ms)
​Stores in file format
Can be encrypted, nested objects, 
Highly Type based - NoSQL Db
Generators are used to create table
No migrations required. Just delete and create new table.

## Packaged Required 
```
hive: ^1.4.0+1
hive_generator: 0.8.1
path_provider:  ^1.5.1
build_runner: 1.10.3
```

## Auto generate the dependecy code for tables

```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```