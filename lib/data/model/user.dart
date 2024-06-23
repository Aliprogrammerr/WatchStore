
import 'dart:convert';
import 'dart:html';

class User{
  User({
    required this.address, 
    required this.image,
    required this.lat,
    required this.lng, 
    required this.name, 
    required this.phone,
    required this.postalCode
  });

  final String name; 
  final String phone; 
  final String address; 
  final String postalCode; 
  final image;
  final double lat; 
  final double lng; 

  Map<String,dynamic>toMap(){
    return {
      "name":name,
      "phone":phone,
      "address":address,
      "postal_code":postalCode,
      "image":image,
      "lat":lat,
      "lng":lng,
    };
  }


  factory User.fromJson(String? jsonString){
    Map<String , dynamic> map =jsonDecode(jsonString!);
    return User(
      address: map["address"],
      image: map["image"],
      lat: map["lat"], 
      lng:map["lng"] , 
      name: map["name"], 
      phone:map["phone"] , 
      postalCode:map["postal_code"]
      );
  }

  
}