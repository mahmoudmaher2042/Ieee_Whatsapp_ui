import 'package:button_animations/button_animations.dart';
import'package:flutter/material.dart';
import 'package:untitled1/ui.dart';
void main (){
  runApp(MaterialApp(home: Login(),debugShowCheckedModeBanner: false ,)
  );
}
class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 100,)
            ,Image.asset("assets/img/what.jpg",scale: 5,),
            Text("Whatsapp",style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.w400
            ),),SizedBox(height: 100,),
            Container(width:350,height:320,decoration: BoxDecoration( boxShadow:[BoxShadow(spreadRadius: 5,blurRadius: 5,color: Colors.black12.withOpacity(0.3))],
              borderRadius: BorderRadius.all(Radius.circular(30)),color: Colors.blueGrey,
            ),
              child: Column(children: [
                SizedBox(height: 25,),SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(

                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_pin,color: Colors.teal.shade200,),
                          hintText: "Enter Email",
                          labelText: "Email",
                          hoverColor: Colors.greenAccent,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),

                          )
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
cursorColor: Colors.teal.shade500,

                      decoration: InputDecoration(

                          prefixIcon: Icon(Icons.lock,color: Colors.teal.shade200,),
                          suffixIcon: Icon(Icons.remove_red_eye,color: Colors.teal.shade200,),
                          hintText: "Enter Password",
                          labelText:  "Password",fillColor: Colors.greenAccent,hoverColor: Colors.greenAccent,focusColor: Colors.greenAccent,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),

                          )
                      )
                  ),
                ),
                Text("Forgot Password ?",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),)
                ,Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: AnimatedButton(colors: [Colors.teal.shade50,],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("LOG IN ",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),),
                      ],
                    ),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (v)
                    {
                      return Myapp();
                    }));
                    },
                    type: null,
                    height: 50,
                    borderRadius: 30,
                    color: Colors.teal.shade500,
                    width: 100,
                  ),
                ),Text("SIGN UP",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),)

              ],),)
          ],
        ),
      ),
    );
  }
}
