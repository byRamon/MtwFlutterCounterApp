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
    TextStyle estilo =
        TextStyle(fontSize: 25, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.bold);
    TextStyle estiloContador =
        TextStyle(fontSize: 25, color: Color.fromRGBO(152, 152, 152, 1));

    CupertinoButton btnReset = CupertinoButton(
        child: Icon(CupertinoIcons.refresh),
        color: CupertinoColors.activeBlue,
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        onPressed: () {
          agregar(-counts);
        });
    CupertinoButton btnAdd = CupertinoButton(
        child: Icon(CupertinoIcons.add),
        color: CupertinoColors.activeBlue,
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        onPressed: () {
          agregar(1);
        });
    CupertinoButton btnMinus = CupertinoButton(
        child: Icon(CupertinoIcons.minus_circled),
        color: CupertinoColors.activeBlue,
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
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
            child: Container(
              color: CupertinoColors.white,
              height: 150.0,
              child: Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    'Número de Clicks:',
                    style: estilo,
                  ),
                  Text(
                    '$counts',
                    style: estiloContador,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      btnReset,
                      btnAdd,
                      btnMinus,
                    ],
                  ),
                ],
              )),
            ),
          )),
    );
    return body;
  }
}
