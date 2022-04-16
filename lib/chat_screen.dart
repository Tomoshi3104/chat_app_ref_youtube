import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
        title: Text(
          'MENTAくん',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 32.0,
                ),
                child: Column(
                  children: <Widget>[
                    rightBallon(),
                    leftBallon(),
                    rightBallon(),
                    rightBallon(),
                    leftBallon(),
                  ],
                ),
              ),
            ),
            textinputWidget(),
          ],
        ),
      ),
    );
  }

  Padding leftBallon() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: ClipOval(
              child: Image.asset('assets/img/IMG_2.jpg'),
            ),
          ),
          const SizedBox(width: 16.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 233, 233, 233),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('だよね'),
            ),
          ),
        ],
      ),
    );
  }

  Padding rightBallon() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            gradient: LinearGradient(
              begin:FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                const Color.fromARGB(255, 108, 132, 235),
                const Color.fromARGB(250, 132, 199, 250),
              ],
              stops: const [
                0.0,
                1.0,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Flutterって便利だね！', 
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container textinputWidget() {
    return Container(
      height: 68,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            iconSize: 28,
            color: Colors.black54,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.photo_outlined),
            iconSize: 28,
            color: Colors.black54,
            onPressed: (){},
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic),
            iconSize: 28,
            color: Colors.black54,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}