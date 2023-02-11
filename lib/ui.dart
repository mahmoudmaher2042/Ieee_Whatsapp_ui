import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
              Container(color: Colors.white.withOpacity(0),height: double.infinity,child: Scaffold(extendBody: true,
                  body: Mylist1(),drawerDragStartBehavior: DragStartBehavior.start,
                  appBar: AppBar(backgroundColor: Colors.white,leadingWidth: double.infinity,leading: Head(),flexibleSpace: Container(
                    child:Column(
                      children: [SizedBox(height: 41,),
                        Container(height: 15,color: Colors.grey.withOpacity(0.5),child: Row(
                          children: [
                            Text("Recent update",style: TextStyle(fontSize: 12),),
                          ],mainAxisAlignment: MainAxisAlignment.start,
                        ),),
                      ],
                    ) ,
                  ),))),Mylist2()
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
class MyTile2 extends StatelessWidget {
  MyTile2(this.index);

  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/img/icon.jpg"),
            ),
            title: Row(
              children: [
                Text('engineer'),SizedBox(width: 180,),Icon(Icons.video_call),
              ],
            ),
            subtitle: Row(
              children: [Icon(Icons.call_missed_outlined,color: Colors.red,),
                Text(' now'),
              ],
            ),
            onTap: () {},
            enabled: true,
          ),
        ],crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
class MyTile1 extends StatelessWidget {
  MyTile1(this.index);

  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width:62,height: 62,decoration: BoxDecoration(
              color: Colors.blue,
               borderRadius: BorderRadius.circular(110)
            ),
              child: CircleAvatar(
                radius: 40,

                backgroundImage: AssetImage("assets/img/icon.jpg"),
              ),
            ),
            title: Text('engineer'),
            subtitle: Text(' now'),
            onTap: () {},
            enabled: true,
          ),
        ],crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
class Head extends StatelessWidget {
  const Head({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white.withOpacity(0),
      child: Column(
        children: [
          Row(
            children: [Stack(alignment:Alignment.bottomRight,children: [CircleAvatar(radius: 21,
            backgroundImage: AssetImage("assets/img/icon.jpg"),),CircleAvatar(
            radius: 5,backgroundColor: Colors.green,child: Icon(Icons.add
            ,size: 8,),
          )],
          ),Column(
              children: [Text("My statue",style: TextStyle(fontSize: 18,color: Colors.black),),Text("Tap to add statue update",style: TextStyle(fontSize: 7,color: Colors.black),),],
            ),

            ],mainAxisAlignment: MainAxisAlignment.start,
          ),

        ],
      ),height: double.infinity,
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
        itemCount: 10,
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
        itemCount: 8,
        itemBuilder: (context, index) => MyTile1(index),

      ),
    );
  }
}
class Mylist2 extends StatelessWidget {
  const Mylist2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Center(
            child: Container(width: 400, height: 0.5, color: Colors.black)),
        itemCount: 8,
        itemBuilder: (context, index) => MyTile2(index),

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
