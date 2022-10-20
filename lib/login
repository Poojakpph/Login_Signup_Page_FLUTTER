import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState()=> _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
bool isRememberMe=false;


Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
          )
          ]
        ),

        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black, 
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: Color.fromARGB(255, 47, 5, 64),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black)
          ),
        ),
        
      )
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Password',
      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
          )
          ]
        ),

        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black, 
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock,
              color: Color.fromARGB(255, 47, 5, 64),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black)
          ),
        ),
        
      )
    ],
  );
}

Widget buildForgetPassbtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: ()=>print("Forgot Password pressed"),
      //padding: EdgeInsets.only(right: 0),
      child: Text('Forgot Password?',
      style: TextStyle(color: Color.fromARGB(255, 47, 5, 64), fontWeight: FontWeight.normal),),
      ),
  );
}

Widget buildRememberCv(){
  return Container(
    height: 20,
    child: Row(
      children: <Widget>[
        Theme(data: ThemeData(unselectedWidgetColor: Colors.white), 
        child: Checkbox(
          value: isRememberMe,
          checkColor: Colors.green,
          activeColor: Colors.white,
          onChanged: (value){
            setState(() {
              isRememberMe= true;
            });
          },
          ),
          ),

          Text("Remember Me",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),)
      ],
    ),
  );
}

Widget buildLoginbtn(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    height: 100,
    
    child: ElevatedButton(
       style: ButtonStyle(  
         backgroundColor: MaterialStateProperty.all(Colors.white),
         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
           RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
             )
            ) 
          ),
      onPressed: ()=>print('Login Pressed'),
      child: Text(
        'LOGIN', style: TextStyle(color: Color(0xff4f1983), fontSize: 18, fontWeight: FontWeight.bold ),),
    
    ),
  );
}

Widget buildSignupbtn(){
   return GestureDetector(
    onTap: ()=>print("Sign Up Pressed"),
    child: RichText(
      text: TextSpan(
        children:[
          TextSpan(
            text: 'Don\'t have an Account? ',
            style: TextStyle(color: Color.fromARGB(255, 47, 5, 64), fontSize: 18, fontWeight: FontWeight.normal),
          )
        ]
      ),
    ),
   );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body:  AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
          child: Stack(
            children: <Widget>[

            
             Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffc79cc6),
                    Color(0xffc79cc6),
                    Color(0xffc79cc6),
                    Color(0xffc79cc6)
                  ]
          
                )
              ),

              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                     "Sign In",
                     style: TextStyle(color: Color.fromARGB(255, 47, 5, 64), fontSize: 40, fontWeight: FontWeight.bold, ), ),
                     SizedBox(height: 50),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildPassword(),
                    buildForgetPassbtn(),
                    buildRememberCv(),
                    buildLoginbtn(),
                    buildSignupbtn(),
                ],
              ),
              ),
            )
          ]
        ),
      ),

    );
  }
}
