import 'package:flutter/material.dart';
import 'home_page.dart';

class ImageDetailPage extends StatefulWidget {
  @override
  _ImageDetailPage createState() => _ImageDetailPage();
}

class _ImageDetailPage extends State<ImageDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                constraints: BoxConstraints.expand(),
                child: Image(
                  image: NetworkImage(
                      "https://pbs.twimg.com/media/EsQKRPOVcAMtw3B.jpg"),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () => _onTapCheck(),
                      color: Colors.black,
                      icon: Icon(Icons.check_circle_outline)),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }))
                    },
                    color: Colors.black,
                    icon: Icon(Icons.delete_outline),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }

  Future<void> _onTapCheck() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('次も頑張ろう！'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
