import 'package:flutter/material.dart';
import 'package:flutter_team11/image_detail_page.dart';

class MoshiDetailPage extends StatelessWidget {
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
                        "模試詳細",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MoshiDetailWidget(
                    title: "模試名",
                    content: "進研模試 2021 高2 1月",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MoshiDetailWidget(
                    title: "目標点数",
                    content: 700.toString(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MoshiDetailWidget(
                    title: "自己採点結果",
                    content: 670.toString(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "復習用データ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("moshi-question.png"),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => ImageDetailPage(),
                              ),
                            );
                          },
                          child: Image(
                            image: NetworkImage(
                                "https://pbs.twimg.com/media/EsQKRPOVcAMtw3B.jpg"),
                          ),
                        ),
                        Text("moshi-answer.png"),
                        Image(
                          image: NetworkImage(
                              "https://pbs.twimg.com/media/DN8IVk3VAAA4LWf.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: 写真の追加
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class MoshiDetailWidget extends StatelessWidget {
  MoshiDetailWidget({required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            content,
          ),
        ],
      ),
    );
  }
}
