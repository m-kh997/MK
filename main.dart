import 'package:dio/dio.dart';
void main () async {
  Dio dio = Dio ();
  Response response = await dio.get ('http://682b3419d29df7a95be27be0.mockapi.io/products/1');
  print(response);
  print(response.data);
  Simple simple = Simple.from_Map(response.data);
  print(simple);
}

class Simple {
  String createdAt;
  String name;
  String avatar;
  String id;
  Simple({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.id
  });
  
  static from_Map (Map<String,dynamic>map){
    return Simple (createdAt : map['createdAt'],name : map['name'],avatar : map['avatar'],id : map['id']);
  }
  @override 
  String toString() {
    return "createdAt : ${createdAt} , name : ${name} , avatar : ${avatar} , id : ${id}";
  }
}
