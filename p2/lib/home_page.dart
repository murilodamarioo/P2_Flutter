import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {

  final formKey = GlobalKey<FormState>();
  final emailKey = GlobalKey<FormFieldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                width: 128,
                height: 128,
              ),
              TextFormField(
                key: emailKey,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "E-mail necessário";
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                obscureText: true,
                validator: (String? value) {
                  if(value == null || value.isEmpty) {
                    return "senha necessária";
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  formKey.currentState?.validate();
                }, 
                child: const Text("Login"),
              ),
              TextButton(
                onPressed: () {
                  emailKey.currentState?.validate();
                }, 
                child: const Text('Esqueceu sua senha?'),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          )
        ),
      ),
    );
  }
}