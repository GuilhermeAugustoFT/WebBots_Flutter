import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/models/client.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            '19174 e 19188 - Controlador do robo TCP IP',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: Colors.redAccent,
                    ),
                    Text(
                      ' --- Aumentar velocidade',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_downward_rounded,
                      color: Colors.redAccent,
                    ),
                    Text(
                      ' --- Diminuir velocidade',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.redAccent,
                    ),
                    Text(
                      ' --- Mover para esquerda',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.redAccent,
                    ),
                    Text(
                      ' --- Mover para direita',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.only(
                top: 150,
                left: 160,
                right: 160,
              ),
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () async {
                  await Client.execute('c'); // para cima
                },
                child: Icon(
                  Icons.arrow_upward_rounded,
                  size: 30,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 50, top: 15),
                  width: 100,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () async {
                      await Client.execute('e'); // para a esquerda
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 93),
                  width: 100,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () async {
                      await Client.execute('d'); // para a direita
                    },
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 160,
                right: 160,
              ),
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () async {
                  await Client.execute('b'); // para baixo
                },
                child: Icon(
                  Icons.arrow_downward_rounded,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
