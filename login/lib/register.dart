import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key?key}): super(key:key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration (
        image: DecorationImage(
          image: AssetImage('assets/register.png'),
          fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack (
          children: [
            Container (
              padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width-300)/2,
                top: 130
              ),
              child: Text("Welcome Here\n", style: TextStyle(
                color: Colors.redAccent,
                fontSize: 40
              )
              ),
            ),
            SingleChildScrollView(
            child: Container (
              padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height)*0.5,
                right: 400,
                left: 400,
              ),
              child: Column (
                children: [
                  TextField(
                    decoration: InputDecoration (
                      fillColor: Colors.grey.shade100,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration (
                      fillColor: Colors.grey.shade100,
                      hintText: 'New Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration (
                      fillColor: Colors.grey.shade100,
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row (
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Already Signed In? Log In', 
                      style: TextStyle (
                          color: Color(0xff4c505b),
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                        )
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar (
                        radius: 20,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton (
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          icon: Icon(Icons.arrow_back),

                        )
                      )
                    ],
                  ),
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}