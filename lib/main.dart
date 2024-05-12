import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listview_assignment_2/Product.dart';
import 'package:listview_assignment_2/Product_Info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        //home:  Product()
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

   final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
       key: _formKey,
        child: Scaffold(
          body: Center(
            child: Center(
              child: Container(
                 height: 500,
                 width: 1040,
                 margin: EdgeInsets.all(100),
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      )
                      ]
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Container(
                  color: Colors.black,
                  height: double.maxFinite,
                  child: Image.network('https://i0.wp.com/iide.co/wp-content/uploads/2021/09/image4-22.png?w=512&ssl=1',),
                  width: 520,
                 ),

                Container(
                  width: 500,
                  color: Color.fromARGB(255, 255, 255, 255),
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                 
                   child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Text('Login in to Flipkart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue),),

                      Container(
                        margin: EdgeInsets.fromLTRB(50, 30, 50, 10),
                        child: TextFormField(
                          decoration: const InputDecoration(          
                          hintText: "Enter Username ",
                          ),

                          validator: (value) {
                            if(value!.isEmpty){
                                return 'Please enter some text';
                              }
                                else if(!value!.contains('@') || !value!.contains('.') || value == null || value.isEmpty || value.length > 20 ){
                                return 'must contain "@" , "." and length less than 20 ';
                              } 
                            },
                            //For runtime eroor 
                            autovalidateMode: AutovalidateMode.onUserInteraction, 
                           )
                    ),
                    
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                      child: TextFormField(

                         decoration: const InputDecoration(              
                          hintText: "Password",
                          ),
                          
                        validator: (value) {
                         
                          if (value!.isEmpty) {
                           return 'Please enter a password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          if (!value.contains(RegExp(r'[0123456789]'))) {
                             return 'Password must contain at least one digit';
                          }
                          if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                            return 'Password must contain at least one special character';
                          }
                             return null;
                           },
                           //For runtime eroor
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                    )
                    ),

                    Container(
                      height: 40,
                      width: 250,
                      margin: EdgeInsets.fromLTRB(0,20, 0,10),
                    
                      child: ElevatedButton(
                        onPressed: (){
                           if(_formKey.currentState!.validate()){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow
                          ),
                        child: const Text('Login in',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w500),),
                      ),
                    ),

                    InkWell(
                      child: Text('Forgotten account?',style: TextStyle(color: Colors.blue),),
                      onTap: (){},
                    )
                   ],),
                  )
              ],
            ),
          ),
        )
      )
    )
    );
  }
}
