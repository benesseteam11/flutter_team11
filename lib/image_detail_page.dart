import 'package:flutter/material.dart';

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
        body: Stack(
          children: [
            Center(
              child: Container(
                constraints: BoxConstraints.expand(),
                child: Image.asset('assets/benesse.jpeg'),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: () => _onTapCheck(),
                            color: Colors.black,
                            icon: Icon(Icons.check_circle_outline)),
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          color: Colors.black,
                          icon: Icon(Icons.delete_outline),
                        )
                      ],
                    )
                )
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
