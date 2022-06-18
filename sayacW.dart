import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'SayacModel.dart';

class sayacW extends StatelessWidget {
  const sayacW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SayacModel>(
      builder: (context, sayacModelNesne, child) {
        return Text('sayac: ${sayacModelNesne.sayaciOku()}');
      },
    );
  }
}
