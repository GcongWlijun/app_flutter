import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter_app_project/Pages/loading.dart';

class healthyAssessPage extends StatelessWidget {
  // Default placeholder text

//  点击滑动到指定位置
  _scrollToIndex() {
//    var key = dataList[12];
//
//    ///获取 renderBox
//    RenderBox renderBox =
//    key.globalKey.currentContext.findRenderObject();
//
//    ///获取位置偏移，基于 ancestor: SingleChildScrollView 的 RenderObject()
//    double dy = renderBox
//        .localToGlobal(Offset.zero,
//        ancestor: scrollKey.currentContext.findRenderObject())
//        .dy;
//
//    ///计算真实位移
//    var offset = dy + controller.offset;
//
//    print("*******$offset");
//
//    controller.animateTo(offset,
//        duration: Duration(milliseconds: 500), curve: Curves.linear);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("健康评估"),
      ),
      body:  Center(

        child: Container(
            child: MyList()
        ),
      ),
      persistentFooterButtons: <Widget>[
        new FlatButton(
          onPressed: () async {
            _scrollToIndex();
          },
          child: new Text("糖"),
        ),
      ],
    );
  }
}

//自定义列表组件(组件名MyList)
class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
      children: <Widget>[
        Card(
          elevation: 0.0,
          borderOnForeground: true,
          margin: EdgeInsets.fromLTRB(15, 10, 15, 25),
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: <Widget>[
              Container(
                //设置 child 居中
                alignment: Alignment.centerLeft,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                //边框设置
                decoration: new BoxDecoration(
                  //背景
                    color: Colors.white,
                    //设置四周边框
                    border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(222, 222, 222, 1)
                      ),
                    )
                ),
                child: Text(
                  "糖尿病1",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(0, 0, 0, 1),

                  ),
                ),
              ),
              Text(
                '本次检测结果正常:请继续保持良好的生活习惯，注意劳逸结合、合理饮食，保持健康睡眠和适量运动。尿糖检出疑是阳性(+)，孕妇或者检查前摄入大量含糖量较高的食物有可能造成尿糖检出疑是(+)，少吃含糖量较高的食物，次日取晨尿进行复查。尿酮体检出阴性，属于正常。尿PH值 检出酸性，进肉食后有可能造成尿检酸性,请注意合理饮食。尿维生素C检出阳性(++)，请多喝水，避免过量服用维生素C类药物或食物，次日取晨尿进行复查。',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

              ),
              Row(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(75, 165, 93, 1),
                        child: Text(
                            '葡萄糖(GLU)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            )
                        ),
                        padding: EdgeInsets.fromLTRB(5,3,5,3),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),

                      ),
                      Container(
                        child: Text(
                            '疑是（±）',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(238, 176, 63, 1),
                        child: Text(
                            '酮体(KET)',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            )
                        ),
                        padding: EdgeInsets.fromLTRB(5,3,5,3),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),

                      ),
                      Container(
                        child: Text(
                            '阴性（-）',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          elevation: 0.0,
          borderOnForeground: true,
          margin: EdgeInsets.fromLTRB(15, 10, 15, 25),
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: <Widget>[
              Container(
                //设置 child 居中
                alignment: Alignment.centerLeft,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                //边框设置
                decoration: new BoxDecoration(
                  //背景
                    color: Colors.white,
                    //设置四周边框
                    border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(222, 222, 222, 1)
                      ),
                    )
                ),
                child: Text(
                  "糖尿病2",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(0, 0, 0, 1)
                  ),
                ),
              ),
              Text(
                '本次检测结果正常:请继续保持良好的生活习惯，注意劳逸结合、合理饮食，保持健康睡眠和适量运动。尿糖检出疑是阳性(+)，孕妇或者检查前摄入大量含糖量较高的食物有可能造成尿糖检出疑是(+)，少吃含糖量较高的食物，次日取晨尿进行复查。尿酮体检出阴性，属于正常。尿PH值 检出酸性，进肉食后有可能造成尿检酸性,请注意合理饮食。尿维生素C检出阳性(++)，请多喝水，避免过量服用维生素C类药物或食物，次日取晨尿进行复查。',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

              ),
              Row(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(75, 165, 93, 1),
                        child: Text(
                            '葡萄糖(GLU)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            )
                        ),
                        padding: EdgeInsets.fromLTRB(5,3,5,3),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),

                      ),
                      Container(
                        child: Text(
                            '疑是（±）',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(238, 176, 63, 1),
                        child: Text(
                            '酮体(KET)',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            )
                        ),
                        padding: EdgeInsets.fromLTRB(5,3,5,3),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),

                      ),
                      Container(
                        child: Text(
                            '阴性（-）',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          elevation: 0.0,
          borderOnForeground: true,
          margin: EdgeInsets.fromLTRB(15, 10, 15, 25),
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: <Widget>[
              Container(
                //设置 child 居中
                alignment: Alignment.centerLeft,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                //边框设置
                decoration: new BoxDecoration(
                  //背景
                    color: Colors.white,
                    //设置四周边框
                    border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(222, 222, 222, 1)
                      ),
                    )
                ),
                child: Text(
                  "糖尿病3",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(0, 0, 0, 1)
                  ),
                ),
              ),
              Text(
                '本次检测结果正常:请继续保持良好的生活习惯，注意劳逸结合、合理饮食，保持健康睡眠和适量运动。尿糖检出疑是阳性(+)，孕妇或者检查前摄入大量含糖量较高的食物有可能造成尿糖检出疑是(+)，少吃含糖量较高的食物，次日取晨尿进行复查。尿酮体检出阴性，属于正常。尿PH值 检出酸性，进肉食后有可能造成尿检酸性,请注意合理饮食。尿维生素C检出阳性(++)，请多喝水，避免过量服用维生素C类药物或食物，次日取晨尿进行复查。',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

              ),
              Row(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(75, 165, 93, 1),
                        child: Text(
                            '葡萄糖(GLU)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            )
                        ),
                        padding: EdgeInsets.fromLTRB(5,3,5,3),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),

                      ),
                      Container(
                        child: Text(
                            '疑是（±）',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(238, 176, 63, 1),
                        child: Text(
                            '酮体(KET)',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            )
                        ),
                        padding: EdgeInsets.fromLTRB(5,3,5,3),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),

                      ),
                      Container(
                        child: Text(
                            '阴性（-）',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}