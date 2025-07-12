// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedBookModelAdapter extends TypeAdapter<SavedBookModel> {
  @override
  final int typeId = 0;

  @override
  SavedBookModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavedBookModel(
      title: fields[0] as String,
      thumbnail: fields[1] as String,
      previewLink: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SavedBookModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.thumbnail)
      ..writeByte(2)
      ..write(obj.previewLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedBookModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
