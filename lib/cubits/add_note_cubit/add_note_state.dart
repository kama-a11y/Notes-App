part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class AddNoteInit extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String message;

  AddNoteFailure(this.message);
}
