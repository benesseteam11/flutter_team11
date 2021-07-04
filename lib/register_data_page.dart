import 'package:flutter/material.dart';

class RegisterDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Team11'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                      child: Text(
                        "詳細を入力しよう！",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  TextFieldWidget(
                    hint: "模試名",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFieldWidget(hint: "目標点数"),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFieldWidget(hint: "自己採点結果"),
                  SizedBox(
                    height: 8.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: 画像を選択
                    },
                    child: Text(
                      "復習箇所を選択",
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  // ListView(
                  //   children: <Widget>[],
                  // ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("moshi-question.png"),
                        Image(
                          image: NetworkImage(
                              "https://pbs.twimg.com/media/EsQKRPOVcAMtw3B.jpg"),
                        ),
                        Text("moshi-answer.png"),
                        Image(
                          image: NetworkImage(
                              "https://pbs.twimg.com/media/DN8IVk3VAAA4LWf.jpg"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      elevation: 5.0,
                      child: MaterialButton(
                        onPressed: () {
                          // TODO: 遷移
                        },
                        minWidth: 200.0,
                        height: 42.0,
                        child: Text(
                          '内容を登録する',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// textfieldのウィジェット
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        //Do something with the user input.
      },
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
