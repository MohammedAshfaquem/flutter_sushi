// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartcontroller.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class cartmodelAdapter extends TypeAdapter<cartmodel> {
  @override
  final int typeId = 1;

  @override
  cartmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return cartmodel(
      image: fields[1] as String,
      name: fields[2] as String,
      price: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, cartmodel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is cartmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
