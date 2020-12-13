import 'package:flutter/material.dart';
import 'package:rest_api_crud_with_provider/screen/services.dart';
import 'package:rest_api_crud_with_provider/screen/user.dart';

class JsonParseDemo extends StatefulWidget {
  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  //
  List<Users> _users;
  bool _loading;
  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getUser().then((users) {
      _users = users;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? "Loading..." : "Users"),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: (context, index) {
            Users user = _users[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        ),
      ),
    );
  }
}
