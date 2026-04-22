import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled:true,
             builder: (context){
              return AddNoteBottomSheet();
             });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(60)
          ),
          backgroundColor: Color(0xff54EEDB),
          child: Icon(Icons.add,color: Colors.black,),
          ),
        body: NotesViewBody(),
      ),
    );
  }
}
