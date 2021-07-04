import 'package:flutter/material.dart';
import 'moshi_detail_page.dart';

class PictureCard extends StatelessWidget {

  final String _moshiName;
  final String _moshiDate;
  final String _moshiScore;
  final Image _moshiImage;

  PictureCard( this._moshiName, this._moshiDate, this._moshiScore, this._moshiImage);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MoshiDetailPage();
        }));
      },
      child: SizedBox(
        width: 120,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 50,
              child: _moshiImage,
            ),
            ListTile(
              // leading: Icon(Icons.edit),
              title: Text(_moshiName),
              subtitle: Text(_moshiDate + ':' + _moshiScore + '点'),
            ),
          ],
        ),
      ),
    );
  }
}