import 'package:flutter/material.dart';
void main () {
  runApp(MaterialApp(home: app(),debugShowCheckedModeBanner: false,));
}
class app extends StatefulWidget {
  const app({Key key}) : super(key: key);

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) {
      return ListTile(
        leading: Column(
          children: [

            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade400
              ),

              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/img/icon.jpg"),

              ),
            ),
          ],
        ),
        title: Text('engineer'),
        subtitle: Text('now'),
        onTap: () {},
        enabled: true,
      );
    }
  }
}
