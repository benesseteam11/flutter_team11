import 'package:flutter/material.dart';
import 'picture_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PictureCard> moshis = [
    PictureCard('進研模試','2021年7月2日','640',Image.asset('assets/benesse.jpeg')),
    PictureCard('進研模試','2021年6月2日','620',Image.asset('assets/benesse.jpeg')),
    PictureCard('進研模試','2021年5月2日','440',Image.asset('assets/benesse.jpeg')),
    PictureCard('進研模試','2021年4月2日','840',Image.asset('assets/benesse.jpeg')),
  ];

  List<PictureCard> viewMoshis = [
    PictureCard('進研模試','2021年7月2日','640',Image.asset('assets/benesse.jpeg')),
    PictureCard('進研模試','2021年6月2日','620',Image.asset('assets/benesse.jpeg')),
    PictureCard('進研模試','2021年5月2日','440',Image.asset('assets/benesse.jpeg')),
    PictureCard('進研模試','2021年4月2日','840',Image.asset('assets/benesse.jpeg')),
  ];

  List<String> courages = [
    '復習を始めましょう！',
    '受けた模試を力に変えよう！',
    '受けた模試を力に変えよう！',
    '受けた模試を力に変えよう！',
    '受けた模試を力に変えよう！',
    'あと一息です！',
    'これからも努力を続けていきましょう！',
  ];

  int continueDate = 0;

  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Team11'),
      ),
      body: isFirst ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      isFirst = !isFirst;
                      continueDate = (continueDate + 1) % 7;
                    });
                    // TODO デバック用
                    // TODO 遷移
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    '模試結果登録',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  // TODO 遷移
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlueAccent),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '模試を登録しましょう！',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        '模試は復習することが重要です！',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        'こちらをタップしてください！',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
          ),
        ],
      )
      : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      isFirst = !isFirst;
                      continueDate = (continueDate + 1) % 7;
                    });
                    // TODO デバック用
                    // TODO 遷移
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    '模試結果登録',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                  onTap: () {
                    // TODO 遷移
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '継続'+ (continueDate+1).toString() +'日目',
                          style: TextStyle(
                            fontSize: 36.0,
                          ),
                        ),
                        Text(
                          courages[continueDate],
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          '今復習すると目標に近づけます！',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'こちらをタップしてください！',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.asset('assets/benesse.jpeg'),
                            // テストのイメージを追加
                            Text(
                              '進研模試',
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            Text(
                              '2021年7月2日',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              '640点',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ),
          ),
          Expanded(
            child: Text(
              '最近のデータ',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  if (index >= viewMoshis.length) {
                    viewMoshis.addAll(moshis);
                  }
                  return viewMoshis[index];
                },
              )
          ),
        ],
      ),
    );
  }
}
