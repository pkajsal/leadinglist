import 'package:callapp/leadlist.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                    children:[ Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      
                          color: Colors.blue[900],
                          borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(150),),
                      ),
                    ),
                      
                    ]),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220.0),
                  child: Text("Sign in",style: TextStyle(fontSize: 30,color: Colors.blue[700],fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text("Welcome back ! please enter your credentials login ",style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 320,
                  height: 45,
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(300)
                        ),
                        labelText: "username"
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 320,
                  height: 45,
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(300)
                        ),
                        labelText: "password",
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 205.0),
                      child: Text("Forgot your ",style: TextStyle(fontSize: 15,color: Colors.black),),
                    ),
                    Text("Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Leads()));
                  },
                  child: Text('Login'),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Does not have account? ",style: TextStyle(fontSize: 15,color: Colors.black),),

                    TextButton(onPressed: (){

                    }, child: Text("Sign up",style: TextStyle(color: Colors.blue[700],fontWeight: FontWeight.bold),))
                  ],
                )
              ],
            ),
            ),

    );
  }
}
