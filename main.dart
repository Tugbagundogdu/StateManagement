import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ders/SayacModel.dart';
import 'package:provider_ders/ikincisayfa.dart';
import 'package:provider_ders/sayacW.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SayacModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(title: 'Flutter Demo Home Page 2'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const sayacW(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Provider Örnekli Sayaç Uygulaması',
            ),
            const sayacW(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IkinciSayfa()));
              },
              child: const Text('2. Sayfaya Geçiş Yap'),
            )
          ],
        ),
      ),
      floatingActionButton: Consumer<SayacModel>(
        builder: (context, sayacModelNesne, child) {
          return FloatingActionButton(
            onPressed: () {
              sayacModelNesne.sayaciArttir();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}
