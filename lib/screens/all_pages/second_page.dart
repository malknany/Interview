import 'package:flutter/material.dart';
class SecondPageView extends StatelessWidget {
  const SecondPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
    body: Container(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        children: [
          Image.asset('assets/image/templete 1.png'),
          Image.asset('assets/image/templete 6.png'),
          Image.asset('assets/image/templete 2.png'),
          Image.asset('assets/image/templete 5.png'),
          Image.asset('assets/image/templete 10.png'),
          Image.asset('assets/image/templete 4.png'),
          Image.asset('assets/image/templete 4.png'),
          Image.asset('assets/image/templete 7.png'),
          Image.asset('assets/image/templete 2.png'),
          Image.asset('assets/image/templete 8.png'),
          Image.asset('assets/image/templete 1.png'),
          Image.asset('assets/image/templete 4.png'),
        ],
      ),
    ),
  );
}

