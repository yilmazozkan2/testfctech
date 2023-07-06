import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testfctech/constants/padding.dart';

//Widgets
import 'package:testfctech/widgets/home_page/search/search_text_field.dart';
import 'package:testfctech/widgets/home_page/users_list/users_list_builder.dart';
import 'package:testfctech/widgets/home_page/users_text.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List<dynamic> users = [];
  late Future<http.Response> _futureResponse;
  List<dynamic> filteredNames = [];

  Future<http.Response> getUsers() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print('get success');
    }
    // print(response.body.toString());
    final jsonBody = jsonDecode(response.body.toString());
    for (var user in jsonBody) {
      users.add(user);
    }
    // print(users);
    return response;
  }

  @override
  void initState() {
    super.initState();
    _futureResponse = getUsers();
    filteredNames = users;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjeDecorations.homeColumnPadding,
      child: Column(
        children: [
          UsersText(),
          Padding(
            padding: ProjeDecorations.homeInputPadding,
            child: SearchTextField(
              onChanged: (String value) {
                if (value.isEmpty) {
                  filteredNames = List.from(users);
                } else {
                  for (var user in users) {
                    if (user['name'] == value) {
                      print(user['name']);
                      setState(() {
                        filteredNames = users
                            .where((user) =>
                                user['name'].toString().toLowerCase() ==
                                value.toLowerCase())
                            .toList();
                      });
                    }
                  }
                }
              },
            ),
          ),
          UsersListBuilder(
            futureResponse: _futureResponse,
            filteredNames: filteredNames,
          ),
        ],
      ),
    );
  }
}
