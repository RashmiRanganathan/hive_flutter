// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerTableAdapter extends TypeAdapter<CustomerTable> {
  @override
  final int typeId = 0;

  @override
  CustomerTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerTable(
      name: fields[1] as String,
      rating: fields[2] as int,
      email: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerTable obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.rating)
      ..writeByte(3)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
