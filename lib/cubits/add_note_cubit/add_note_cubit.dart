import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/app_constant.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInit());
addNote(NoteModel note)async{
emit(AddNoteLoading());
 try {
var notesBox = Hive.box<NoteModel>(AppConstant.kNotesBox);
await notesBox.add(note);   
emit(AddNoteSuccess());
 } catch (e) {
   emit(AddNoteFailure(e.toString()));
 } 
}
}
