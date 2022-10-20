import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical:  50),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                Text(
                "E-Wasteway",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Color.fromARGB(255, 52, 4, 65)) ,),
          
                SizedBox(
              height: 20,
                ),
          
               Text("You give to nature, we give to you !",
                   textAlign: TextAlign.center,
                   style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400, fontSize: 15,
                    
                  ),),
              
                     
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("assets/chat.png")
                        )
                      ),
                    ), 
                   
                  
                  
                  Column(
                     children:<Widget> [
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60, 
                        onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                        },

                        shape: RoundedRectangleBorder(
                          side: BorderSide( color: Colors.black),
                          borderRadius: BorderRadius.circular(50)
                        ),

                        child: Text(
                          "Login", 
                          style: TextStyle(fontWeight: FontWeight.w700,color: Color.fromARGB(255, 46, 5, 50), fontSize: 20),
                        ),
                      ),

                      SizedBox(height: 20),

                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                        },

                         color: Color.fromARGB(255, 135, 69, 125),
                         shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                        ),

                      child: Text("Sign Up",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),)
                                     ),                 
                     ],
                  )
                ],
                
              ),

        ),
       ),
    );

  }
}


