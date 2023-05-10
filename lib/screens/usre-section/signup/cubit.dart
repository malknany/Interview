import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_project/screens/usre-section/signup/states.dart';
import 'package:http/http.dart' as http;

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitState());

  String? Firstname;
  String? Lastname;
  String? Enteryouremail;
  String? Password;
  String? Gender;
  String? Phone;

  final formKey = GlobalKey<FormState>();

  Future<void> register() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    emit(RegisterLoadingState());
    formKey.currentState!.save();
    var response = await http.post(
      Uri.parse(
        " uri      ",
        //SENDING DATA BY THE SAME SPELLING FOR EXAMPLE
        //data:{
        // "name":"name", => DATA THAT IS ENTERED BY USER
        // }
      ),
    );

  }
}
