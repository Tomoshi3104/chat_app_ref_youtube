import 'package:chat_app_ref_youtube/chat_screen.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return ChatScreen();
            }));
          },
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          leading: ClipOval(
            child: Image.asset('assets/img/IMG_1.png'),
          ),
          trailing: Text('3分前'),
          title: Text('MENTAくん'),
          subtitle: Text('Flutter面白い')
        ),
        ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 8.0,
            ),
            leading: ClipOval(
              child: Image.asset('assets/img/IMG_2.jpg'),
            ),
            trailing: Text('10分前'),
            title: Text('かもめくん'),
            subtitle: Text('Welcome to NZ!')),
        ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 8.0,
            ),
            leading: ClipOval(
              child: Image.asset('assets/img/IMG_1.png'),
            ),
            trailing: Text('3分前'),
            title: Text('MENTAくん'),
            subtitle: Text('Flutter面白い')),
        ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 8.0,
            ),
            leading: ClipOval(
              child: Image.asset('assets/img/IMG_2.jpg'),
            ),
            trailing: Text('10分前'),
            title: Text('かもめくん'),
            subtitle: Text('Welcome to NZ!')),
        ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 8.0,
            ),
            leading: ClipOval(
              child: Image.asset('assets/img/IMG_1.png'),
            ),
            trailing: Text('3分前'),
            title: Text('MENTAくん'),
            subtitle: Text('Flutter面白い')),
        ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 8.0,
            ),
            leading: ClipOval(
              child: Image.asset('assets/img/IMG_2.jpg'),
            ),
            trailing: Text('10分前'),
            title: Text('かもめくん'),
            subtitle: Text('Welcome to NZ!')),
      ],
    );
  }
}
