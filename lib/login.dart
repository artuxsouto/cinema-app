import 'package:flutter/material.dart';
import 'home.dart';

class CinemaApp extends StatefulWidget {
  const CinemaApp({Key? key}) : super(key: key);

  @override
  State<CinemaApp> createState() {
    return _CinemaAppState();
  }
}

class _CinemaAppState extends State<CinemaApp> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cinema Por Menos'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const Column(
              children: <Widget>[
                SizedBox(height: 16.0),
                Text('Bem vindo de volta\n\nAcesse sua conta agora'),
              ],
            ),
            const SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Usuário',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Entrar'),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
                TextButton(
                  child: const Text('Esqueceu a senha?'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
