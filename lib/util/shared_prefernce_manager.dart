



import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefernceManager{
  SharedPreferences? _preferences;
  SharedPrefernceManager._privateConstractor();
  static final SharedPrefernceManager _instance = SharedPrefernceManager._privateConstractor(); 



  factory SharedPrefernceManager(){
    return _instance;
  }
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }


  Future <void> saveString(String key, String value) async{
    await _preferences?.setString(key, value);
  }
  String? getString(String key){
    return _preferences?.getString(key);
  }



}