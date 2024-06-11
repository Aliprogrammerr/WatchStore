import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:watchstore/data/constant.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  Dio dio = Dio();

  AuthCubit() : super(AuthInitial()){
    emit(Login());
  }

  sendSms(String mobile) async{
    emit(LoadingState());
    try{
      dio.post(EndPoint.sendSms,data: {"mobile":mobile}).then((value){
        debugPrint(value.toString());
        if(value.statusCode ==201){
          emit(SendState(mobile:mobile ));
        }
        else{
          emit(ErrorState());
        }
      });
    }catch(e){
      emit(ErrorState());
    }
  }

    verifyCode(String mobile ,String code) async{
    emit(LoadingState());
    try{
      dio.post(EndPoint.checkSms ,data: {"mobile":mobile,"code":code}).then((value){
        debugPrint(value.toString());
        if(value.statusCode ==201){
          emit(VerifyState());
        }
        else{
          emit(ErrorState());
        }
      });
    }catch(e){
      emit(ErrorState());
    }
  }



  registerition(){}
}
