

import 'package:injectable/injectable.dart';

@lazySingleton
class AuthService{
  Future<void> login(String userName, String password)async{
    if(userName == "admin" && password == "admin"){
      await Future.delayed(Duration(seconds: 1));
    }
    else{
      throw Exception("Invalid userName or password");
    }
  }
}
































