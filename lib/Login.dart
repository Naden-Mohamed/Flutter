import 'main.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Hello Welcome back',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Log in to continue',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: "Enter your Username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                hintText: "Enter your Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5)),
          ),
          ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              child: const Text('Forget Password?')),
          ElevatedButton(onPressed: () {}, child: const Text('Log in')),
          const Text('or sign in with'),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google.png',
                  width: 22,
                  height: 22,
                ),
                const Text('Sign in with google'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 22,
                ),
                const Text('Sign in with Facebook'),
              ],
            ),
          ),
          Row(
            children: [
              const Text("Don't have an account?"),
              TextButton(onPressed: () {}, child: const Text('Sign up'))
            ],
          )
        ]),
      ),
    );
  }
}
