import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final Dio dio = Dio();



  pickTheLocation({required context}) async{
    await showSimplePickerLocation(
      isDismissible: true,
      context:context ,
      title: "انتخاب موقعیت مکانی",
      textCancelPicker: "لغو",
      
       );
  }

  
}
