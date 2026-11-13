// GENERATED CODE - DO NOT MODIFY BY HAND

/*part of 'likecontroller.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class likestructureAdapter extends TypeAdapter<likestructure> {
  @override
  final int typeId = 2;

  @override
  likestructure read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return likestructure(
      itemname: fields[1] as String,
      itemprice: fields[2] as String,
      itemphoto: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, likestructure obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.itemname)
      ..writeByte(2)
      ..write(obj.itemprice)
      ..writeByte(3)
      ..write(obj.itemphoto);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is likestructureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}*/
