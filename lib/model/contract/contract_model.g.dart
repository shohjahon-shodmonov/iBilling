// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContractsModelAdapter extends TypeAdapter<ContractsModel> {
  @override
  final int typeId = 0;

  @override
  ContractsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContractsModel()
      ..name = fields[0] as String?
      ..amount = fields[1] as String?
      ..lastInvoice = fields[2] as String?
      ..numberOfInvoices = fields[3] as String?
      ..createDate = fields[4] as DateTime?
      ..litso = fields[5] as String?
      ..adress = fields[6] as String?
      ..inn = fields[7] as String?
      ..status = fields[8] as String?;
  }

  @override
  void write(BinaryWriter writer, ContractsModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.lastInvoice)
      ..writeByte(3)
      ..write(obj.numberOfInvoices)
      ..writeByte(4)
      ..write(obj.createDate)
      ..writeByte(5)
      ..write(obj.litso)
      ..writeByte(6)
      ..write(obj.adress)
      ..writeByte(7)
      ..write(obj.inn)
      ..writeByte(8)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContractsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
