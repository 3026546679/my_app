import 'package:flutter/material.dart';

var img1 = 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-53aebf66-c1dd-41a2-bc07-db6afd0d5330/4bab0410-bf69-4ef7-bc15-b7aa80c46997.jpg',
    img2 = 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-53aebf66-c1dd-41a2-bc07-db6afd0d5330/8deff55e-1b39-4763-acd8-e8a12321aa8f.jpg';

class MaoStateTest extends StatelessWidget {
  const MaoStateTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("猫哥有状态无状态教程")),
      body: Column(
        children: [
          Image.network(img1)
        ],
      ),
    );
  }
}


/*class MaoStateTest extends StatefulWidget {
  const MaoStateTest({Key? key}) : super(key: key);

  @override
  State<MaoStateTest> createState() => _MaoStateTestState();
}

class _MaoStateTestState extends State<MaoStateTest> {

  String nowImg = img1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("猫哥有状态无状态教程")),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              nowImg = nowImg == img1 ? img2:img1;
            });
          }, child: const Text('切换图片')),
          Image.network(nowImg)
        ],
      ),
    );
  }
}*/
