import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ders/sayacW.dart';

import 'SayacModel.dart';

class IkinciSayfa extends StatefulWidget {
  IkinciSayfa({Key? key}) : super(key: key);

  @override
  State<IkinciSayfa> createState() => _IkinciSayfaState();
}

class _IkinciSayfaState extends State<IkinciSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İkinci Sayfa'),
      ),
      body: Center(
        child: Column(
          children: [
            const sayacW(),
            Consumer<SayacModel>(
              builder: (context, sayacModelNesne, child) {
                return ElevatedButton(
                  onPressed: () {
                    sayacModelNesne.sayaciAzalt(2);
                  },
                  child: const Text('Azalt'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
