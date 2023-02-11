import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/tile.dart';

class Myapp extends StatefulWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.teal.shade500,
            actions: [
              Row(
                children: [
                  Text(
                    "WhatsApp",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Icon(Icons.search),
                  Icon(Icons.drag_indicator)
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              )
            ],
            bottom: TabBar(
              labelColor: Colors.black,
              tabs: [

                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                  icon: Text(
                    "chats",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  icon: Text(
                    "statues",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  icon: Text(
                    "calls",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt,size: 100,)
              ,Mylist(),
              Mylist1(),Icon(Icons.camera_alt)
            ],
          ),
        ));
  }
}

class MyTile extends StatelessWidget {
  MyTile(this.index);

  int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage("assets/img/icon.jpg"),
      ),
      title: Text('engineer'),
      subtitle: Text('you are legend to be a life up till now'),
      onTap: () {},
      enabled: true,
    );
  }
}


class Mylist extends StatelessWidget {
  const Mylist({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Center(
            child: Container(width: 400, height: 0.5, color: Colors.black)),
        itemCount: 100,
        itemBuilder: (context, index) => MyTile(index),
      ),
    );
  }
}
class Mylist1 extends StatelessWidget {
  const Mylist1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Center(
            child: Container(width: 400, height: 0.5, color: Colors.black)),
        itemCount: 100,
        itemBuilder: (context, index) => app(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}
