import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print("appbar右侧的按钮");
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("有颜色有阴影的普通按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20.0,
                onPressed: () {
                  print("有颜色有阴影的普通按钮");
                },
              ),
              SizedBox(width: 5),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("图标按钮"),
                color: Colors.white,
                onPressed: () {
                  print("图标按钮");
                },
              ),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 100,
            child: RaisedButton(
              child: Text("可调宽高按钮"),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {
                print("可调宽高按钮");
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("自适应按钮"),
                    color: Colors.orange,
                    onPressed: () {
                      print("自适应按钮");
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("圆角按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  print("圆角按钮");
                },
              ),
              Container(
                height: 60,
                child: RaisedButton(
                  child: Text("圆形按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  splashColor: Colors.red,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    print("圆形按钮");
                  },
                ),
              ),
              FlatButton(
                child: Text("扁平按钮"),
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: () {
                  print("扁平按钮");
                },
              ),
              SizedBox(
                width: 10,
              ),
              OutlineButton(
                child: Text("线框按钮"),
                color: Colors.red, //线框按钮的背景颜色设置无效
                textColor: Colors.orange,
                onPressed: () {
                  print("线框按钮");
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: OutlineButton(
                    child: Text("注册"),
                    borderSide: BorderSide(
                      //边线属性设置
                      width: 3,
                    ),
                    textColor: Colors.blue,
                    onPressed: () {
                      print("线框按钮");
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  Container(
                    height: 60,
                    child: RaisedButton(
                      child: Text(
                        "登录",
                        textScaleFactor: 2,
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20.0,
                      onPressed: () {
                        print("登录");
                      },
                    ),
                  ),
                  Container(
                    height: 60,
                    child: OutlineButton(
                      child: Text(
                        "注册",
                        textScaleFactor: 2,
                      ),
                      borderSide: BorderSide(
                        //边线属性设置
                        width: 3,
                      ),
                      textColor: Colors.blue,
                      onPressed: () {
                        print("注册");
                      },
                    ),
                  ),
                  MyButton(
                    text: "自定义按钮",
                    heigh: 60,
                    width: 100,
                    pressed: () {
                      print("自定义按钮");
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final Function pressed;
  final double width;
  final double heigh;

  MyButton({this.text: "", this.pressed, this.width: 80, this.heigh: 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.heigh,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
