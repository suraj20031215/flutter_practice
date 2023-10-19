import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.deepPurple[200],


        title: const Text('My App',style: TextStyle(color: Colors.black),),
      ),
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Container(

                width:double.infinity,

                    child: Image.asset('assets/images/vector.png')),
                Text('Log IN',style: TextStyle(fontSize: 23,fontWeight:FontWeight.w700,color: Colors.deepPurple[300]),),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Container(
                    width: 300,

                    // Email text field

                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Enter your email here...",
                          contentPadding: EdgeInsets.symmetric(vertical: 2),
                          border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.black)
                      ),


                      prefixIcon: Icon(Icons.email_outlined)
                      ),

                    )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 300,
                      child: const TextField(
                        obscureText: true,
                               obscuringCharacter: "*",
                               keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Enter your password here...",
                            contentPadding: EdgeInsets.symmetric(vertical: 2),
                            border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.deepOrange)
                        ),
                            prefixIcon: Icon(Icons.password)
                        ),

                      )
                  ),
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade300,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                    ),
                      onPressed:(){} , child:Text('Sign In',style:TextStyle(color: Colors.white),)),
                ),
          Container(
              margin: EdgeInsets.only(left: 90,top: 10),
              width: double.infinity,
                  child:const Center(
                    child: Row(
                      children: [
                        Text("Don't have an account?"),
                        Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("Sign Up",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
          ),
                Text("Forget Password")
                
              ],
            ),
          )



    );
  }
}
