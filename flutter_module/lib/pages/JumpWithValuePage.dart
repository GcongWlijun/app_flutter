import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //导入前需要配置
import 'dart:convert';

class JumpWithValuePage extends StatefulWidget {

  var arguments;
  ///将需要的参数，直接传递过来
  JumpWithValuePage({this.arguments=""}){
    print(' JumpWithValuePage $arguments');
  }

  @override
  _JumpPageState createState(){
    print(' createState $arguments');
    return _JumpPageState(arguments);
  }
}

class _JumpPageState extends State<JumpWithValuePage> {
  var value;
  var _members = List<Member>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  _JumpPageState(this.value);

  _loadData() async {
    String dataURL = "https://api.github.com/orgs/raywenderlich/members";
    http.Response response = await http.get(dataURL);
    setState(() {
      // json.decode 简写形式
      final members = jsonDecode(response.body);
      for (var member in members) {
        _members.add(Member(member["login"], member["avatar_url"]));
      }
    });
  }

  Widget _buildRow(int i) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        title: Text("${_members[i].login}", style: _biggerFont),
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          backgroundImage: NetworkImage(_members[i].avatarUrl),
        ),
      ),
    );
  }


  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('传入参数为 $value'),
      ),
      body: ListView.separated(
        itemCount: _members.length,
        itemBuilder: (BuildContext context, int index) => _buildRow(index),
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          //返回
          Navigator.of(context).pop(this);
        },
      ),
    );
  }

}

class Member {
  final String login;
  final String avatarUrl;

  Member(this.login, this.avatarUrl) {
    if (login == null) {
      throw new ArgumentError("login of Member cannot be null. "
          "Received: '$login'");
    }
    if (avatarUrl == null) {
      throw new ArgumentError("avatarUrl of Member cannot be null. "
          "Received: '$avatarUrl'");
    }
  }
}