import 'package:flutter/material.dart';
import 'package:flutter_module/pages/healthyAssess.dart';
import 'package:flutter_module/pages/JumpWithValuePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
      ),
      home: MyHomePage(
        title: 'Flutter Demo',
      ),
      routes: <String, WidgetBuilder> {   //配置页面路由
        '/jump_with_value':(context,{arguments})=>JumpWithValuePage(),
        '/healthyAssessPage': (BuildContext context) => new healthyAssessPage()
      },
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Default placeholder text
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: Center(
            child:Container(
              child: new Column(
                children: <Widget>[
                  new RaisedButton(
                    child: Text(
                        "跳转健康评估页面"
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, "/healthyAssessPage");
                    },
                  ),
                  new RaisedButton(
                    child: Text(
                        "命名路由，点击跳转,传值"
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/jump_with_value',arguments:{
                        'name':'张三'
                      });
//                      Navigator.pushNamed(context, "/jump_with_value");
                    },
                  )
                ],
              ),
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            )
        )
    );
  }

}