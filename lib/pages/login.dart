import 'package:flutter/material.dart';
import 'package:heartmatch/backend/functions.dart';
import 'package:heartmatch/pages/Home.dart';
// import 'package:sugar_canvas/backend/functions.dart';
// import 'package:sugar_canvas/pages/entry.dart';
// import 'package:sugar_canvas/utils/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp(
    {super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';


  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                height: h*0.2,
              ),
              !isLogin? TextFormField(
                validator: (value) {
                  if(value.toString().length <= 3){
                    return "Username is so small ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  setState(() {
                    username = value!;
                  });
                },
                key: ValueKey('Username'),
                decoration: InputDecoration(
                  hintText: 'Enter Username : '
                ),
              ):Container(),
              TextFormField(
                key: ValueKey('Email'),
                decoration: InputDecoration(
                  hintText: 'Enter Email : '
                ),
                validator: (value) {
                  if(!((value.toString().contains('@')) && (value.toString().isNotEmpty))){
                    return "Invalid email ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('Password'),
                decoration: InputDecoration(
                  hintText: 'Enter Password : '
                ),
                validator: (value) {
                  if(((value.toString().length<=4))){
                    return "Password is weak ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  // color: colors.prim,
                  borderRadius: BorderRadius.circular(2)),
                width: double.infinity,
                height: 37,
                child: ElevatedButton(
                  style: ButtonStyle(elevation: MaterialStatePropertyAll(1)),
                  onPressed: (){
                  if(_formkey.currentState!.validate()){
                    _formkey.currentState!.save();
                    isLogin? {
                      signin(email ,password )
                    }
                    : signup(email, password);
                    final snackbar = SnackBar(content: 
                  isLogin? Text('Logged in Succesfully'):
                  Text('Signed Up Succesfully')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);

                  Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                Home()),);


                  }
                  

                },
                child: isLogin?Text("Login"): Text('Sign up'))),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: TextButton(onPressed: (){
                    setState(() {
                      isLogin = !isLogin;
                    });
                  }, 
                  child: isLogin? Text("Don't have an account ?"): Text('Already a user ? ')))
              ],
            ),
          ),
        )),
    );
  }
}
