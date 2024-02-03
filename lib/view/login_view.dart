import 'package:flutter/material.dart';


import 'home_view.dart';
import 'register_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  class LoginPage extended StatelessWidget {
    const LoginPage({super.key});

    @override
    Widget build(BuildContent context) {
      return Scaffold (
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: const[
              SizeBox(height: 50),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              )//Icon


              const SizedBox(height: 50),

              //Yeniden hoş geldin
              Text('Yeniden hoş geldin'
                style: TextStyle(
                  color: Colors.grey[700],
                  FontSize: 16
                ),
              ),


              //Kullanıcı adı
              TextField(
                decoration: InputDecoration(
                enableBorder: OutLineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutLineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              fillcolor

              //Şifre

              //Şifreni mi unuttun

              //Giriş yap butonu

              //veya şununla devam et

              //Google veya Facebook butonlarí

              //Hesabın yok mu => kayıt ol

          ]
         )
        )
      )
    )
  }
}
