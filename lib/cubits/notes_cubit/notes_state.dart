part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInit extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
final  List<NoteModel> notes;

  NotesSuccess(this.notes);
}

class NotesFailure extends NotesState {
  final String message;

  NotesFailure(this.message);
}
