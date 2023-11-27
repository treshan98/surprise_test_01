import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage("assets/images/logo.jpg"),
                fit: BoxFit.cover,
                width: 120, // Set the desired width
                height: 120, // Set the desired height
              ),
            ),

            Text("App", textAlign: TextAlign.left,style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
            ),
            SizedBox(height: 50,),
            Container(alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 42),
                  child: Text("Welcome!",textAlign: TextAlign.left,style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white),),
                )),
            Padding(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 0),
            child: Column(
              children: [TextFormField(
                style: TextStyle(color: Colors.white), // Set the text color to white
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.white), // Set the label text color to white
                  hintStyle: TextStyle(color: Colors.white), // Set the hint text color to white
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Set the border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Set the border color when focused
                  ),
                  // You can also customize other aspects of the input decoration here
                ),
              ),
                SizedBox(height: 15,),
                TextFormField(
                  style: TextStyle(color: Colors.white), // Set the text color to white
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white), // Set the label text color to white
                    hintStyle: TextStyle(color: Colors.white), // Set the hint text color to white
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Set the border color
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Set the border color when focused
                    ),
                    // You can also customize other aspects of the input decoration here
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "/search");
                },
                    style: TextButton.styleFrom(
                      fixedSize: Size(300, 20)
                    ),
                    child: Text("Log In")),
                SizedBox(height: 10,),
                Text("Forgot Password?",style: TextStyle(color: Colors.white),),
                SizedBox(height: 100,),
                Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "/search");
                },
                    style: TextButton.styleFrom(
                        fixedSize: Size(150, 20)
                    ),
                    child: Text("Create")),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
