import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    return   Scaffold(

   appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 179, 112, 178),

           leading: IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back,
              size: 20,
              color: Colors.white),

           ),        
     ),
      body :Stack(
      children: [
        
        Container(
          
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover, ),),
        ),

            Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              const Flexible(
            
                child: Center(
                  child: Text(
                    'E-Wasteway',
                     style: TextStyle(
                          color: Color.fromARGB(255, 73, 14, 114), 
                          fontSize:40, 
                          fontWeight: FontWeight.bold), 
                    ),
                 ),
                ),
              
       
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                     color: Color.fromARGB(255, 183, 117, 171),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: TextField(
                    
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal:20),
                          child: Icon(Icons.mail,
                          color: Color.fromARGB(255, 47, 5, 64),
                    ),
                        ),

                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(color: Colors.white) 
                           
                         ),
                         keyboardType: TextInputType.emailAddress,
                         textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                ),
        

                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                     color: Color.fromARGB(255, 183, 117, 171),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: TextField(
                    
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal:20),
                          child: Icon(Icons.lock,
                          color: Color.fromARGB(255, 47, 5, 64),
                    ),
                        ),
                          
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(color: Colors.white) 
                           
                         ),
                         keyboardType: TextInputType.name,
                         textInputAction: TextInputAction.done,
                         obscureText: true,
                      ),
                    ),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                     color: Color.fromARGB(255, 183, 117, 171),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal:20),
                          child: Icon(Icons.lock,
                          color: Color.fromARGB(255, 47, 5, 64),
                    ),
                        ),

                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.white) 
                           
                         ),
                         keyboardType: TextInputType.emailAddress,
                         textInputAction: TextInputAction.next,
                      ),
                    
                    ),

                  ),
                ),
       
                 Padding(
                     padding: const EdgeInsets.all(20.0),
                       child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                        
                          color: Color.fromARGB(255, 47, 5, 64)),
                     child: TextButton(onPressed: () {}, child: Text('Register',style: TextStyle(color: Colors.white)),
                ),
            )

                 ),
            ],
          ),
          )
          
      ],
    )
           
    );
  }
}