import 'dart:convert';

import 'package:callapp/leadlist.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences localStorage;
String role = "";
String user = "User";
String admin = "admin";

Future<void> login({
  required BuildContext context,
  required String userName,
  required String password,
}) async {
  var userData = {
    "username": userName,
    "password": password,
  };
  print(userData);
  try {
    var response = await Api().authData(userData, ApiConstants.Login);

    var body = json.decode(response.body);
    print(body);
    if (body['success'] == true) {
      print("body$body");
      role = body['data']['role'];
      print(role);

      localStorage = await SharedPreferences.getInstance();
      localStorage.setString('role', role.toString());
      localStorage.setInt('login_id', body['data']['login_id']);
      localStorage.setInt('userid', body['data']['userid']);

      print('login_id ${body['data']['login_id']}');
      print('userid ${body['data']['userid']}');
      print('role$role');
      print('userrs$user');

      if (role == user) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Login Successful')));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Leads()));
      } else if (role == admin) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Login Successful')));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Leads()));
      }

    }
    else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(body['message'])));
    }
  } catch (e) {
    print('Error:  $e');
  }
}
