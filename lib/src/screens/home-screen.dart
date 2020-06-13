import 'package:flutter/cupertino.dart';

class CounterApp extends StatefulWidget {
  @override
  CounterApp({Key key}) : super(key: key);
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counts = 0;
  void agregar(int sumando) {
    setState(() {
      counts = counts + sumando;
      print('$counts, $sumando');
    });
  }

  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontWeight: FontWeight.bold);
    TextStyle estiloContador =
        TextStyle(fontSize: 25, color: Color.fromRGBO(152, 152, 152, 1));

    CupertinoButton btnReset = CupertinoButton(
        child: Icon(IconData(0xf21C, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage)),
        color: CupertinoColors.activeBlue,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        onPressed: () {
          agregar(-counts);
        });
    CupertinoButton btnAdd = CupertinoButton(
        child: Icon(IconData(0xf2c7, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage)),
        color: CupertinoColors.activeBlue,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        onPressed: () {
          agregar(1);
        });
    CupertinoButton btnMinus = CupertinoButton(
        child: Icon(IconData(0xf2f4, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage)),
        color: CupertinoColors.activeBlue,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        onPressed: () {
          agregar(-1);
        });
    CupertinoApp body = CupertinoApp(
      debugShowCheckedModeBanner: true,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Counter App'),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de Clicks:',
              style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
            Text(
              '$counts',
              style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,//estiloContador,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                btnReset,
                btnAdd,
                btnMinus,
              ],
            ),
          ],
        )),
      ),
    );
    return body;
  }
}
