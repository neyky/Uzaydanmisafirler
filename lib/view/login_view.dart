import 'package:flutter/material.dart';


import 'home_view.dart';
import 'register_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  RegisterView(),
    );
  }
}

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.accessibility,size: 40,),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Cat Lover',style: TextStyle(fontSize:24.5 ),)
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ClipOval(
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  color: Colors.blue, // You can replace this color with your image
                  child: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              const Center(child: Text("Register",style: TextStyle(fontSize:24.5 ),)),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Name & Surname"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: "Email"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      hintText: "Password"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50,),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed:() async {
                    print("Burada");

                    print(emailController.text);
                    print(passwordController.text);

                    //auth.signInWithEmailAndPassword(email: email, password: password)

                  }, child: const Text("Register")),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.g_mobiledata,size: 100,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.radio,size: 50,)),
                  ],
                ),
              ),
              TextButton(onPressed: (){}, child: const Text("Login Here"))
            ],
          ),
        ),
      ),
    );
  }
}