import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample WF App'),
          backgroundColor: Colors.red[800],
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              'Login',
            style: TextStyle(
              fontSize: 35,
              color: Colors.yellow[700],
              fontWeight: FontWeight.bold
            ),
              ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'email_address',
                        hintText: 'Enter your E-mail address',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder()
                      ),
                      onChanged: (String value){

                      },
                      validator: (value){
                        return value!.isEmpty ? 'Please enter an E-mail Address' : null;
                      },
                    ),
                  ),

                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'password',
                          hintText: 'Enter your Password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder()
                      ),
                      onChanged: (String value){

                      },
                      validator: (value){
                        return value!.isEmpty ? 'Please enter an password' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: MaterialButton(
                      minWidth: double.infinity,
                        onPressed: (){},
                        child: Text('Login'),
                        color: Colors.yellow[700],
                        textColor: Colors.red[800],
                    ),
                  ),
                ],
              )
            ),
          )
        ],
      )
      )
    );
  }
}
