import 'package:flutter/material.dart';
import 'package:example/const/_const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Widget _item(context, index) {
    return InkWell(
      child: Card(
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                PAGE_ITEMS[index]["img"],
                fit: BoxFit.cover,
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(gradient: _itemGradient(index)),
            ),
            Center(
              child: Text(
                PAGE_ITEMS[index]["title"],
                style: TextStyle(
                  color: TEXT_BLACK_LIGHT,
                  fontSize: TEXT_LARGE,
                  fontWeight: FontWeight.w700
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, PAGE_ITEMS[index]["click"]);
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FLUTTER_OPEN),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 1.2),
        itemBuilder: (context, index) {
          return _item(context, index);
        },
        itemCount: PAGE_ITEMS.length,
      ),
    );
  }
}