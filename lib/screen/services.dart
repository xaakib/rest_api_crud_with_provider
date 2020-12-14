// import 'package:rest_api_crud_with_provider/screen/user.dart';
// import 'package:http/http.dart' as http;

// class Services {
//   static const String url = 'https://jsonplaceholder.typicode.com/users';
//   static Future<List<Users>> getUser() async {
//     try {
//       final response = await http.get(url);
//       if (200 == response.statusCode) {
//         final List<Users> users = usersFromJson(response.body);
//         return users;
//       } else {
//         return List<Users>();
//       }
//     } catch (e) {
//       return List<Users>();
//     }
//   }
// }
