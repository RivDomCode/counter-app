import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  @override
  createState(){
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage>{

  final _estiloTexto = new TextStyle(fontSize: 25);

  int _numberOfClicks = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nº de clicks', style: _estiloTexto,),
            Text('$_numberOfClicks', style: _estiloTexto),
          ],
        )
        ),

      floatingActionButton: _createButtons(),
    );
  }

Widget _createButtons() {

  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      SizedBox( width: 30.0 ),
      FloatingActionButton(child: Icon(Icons.exposure_zero_outlined), onPressed: () {_restartCounter();}),
      Expanded(child: SizedBox()) ,
      FloatingActionButton(child: Icon(Icons.remove), onPressed: () {_removeClick();}),
      SizedBox( width: 5.0 ),
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {_addClick();}),
    ],
    );
}

void _addClick() {
  setState((){
    _numberOfClicks++;
  });
}

void _removeClick() {
  setState((){
    _numberOfClicks--;
  });
}

void _restartCounter() {
  setState((){
    _numberOfClicks = 0;
  });
}

}




