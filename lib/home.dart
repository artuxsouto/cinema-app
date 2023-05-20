import 'package:flutter/material.dart';
import 'cinemas.dart';

class CinemaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: Colors.red),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cinema Por Menos'),
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: IconTheme(
              data: const IconThemeData(color: Colors.black),
              child: Row(children: <Widget>[
                IconButton(
                  tooltip: 'Ir para pagina inicial',
                  icon: const Icon(Icons.home),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Ir para pagina cinemas',
                  icon: const Icon(Icons.movie),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CinemasWidget()),
                    );
                  },
                ),
                IconButton(
                  tooltip: 'Sobre cinema por menos',
                  icon: const Icon(Icons.menu),
                  onPressed: () => _sobre(context),
                ),
              ]),
            )));
  }

  Future<void> _sobre(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sobre o\nCinema Por\nMenos'),
          content: const Text('Somos um aplicativo voltado'
              'ao conforto dos usuarios onde'
              'possibilitamos que os usuarios'
              'tenham a liberdade de localizar'
              'o cinema mais proximo ou dar a'
              'opção para que vejam a'
              'programação de diversos'
              'cinemas e deixar que assim o'
              'cliente escolha a melhor opção'
              'para atende-lo'
              'Para que você não tenha que ter'
              '10 ou mais aplicativos vem para'
              'o Cinema Por menos !!!!'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Voltar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
