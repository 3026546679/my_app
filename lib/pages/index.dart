import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:my_app/mao/input.dart';
import 'package:my_app/mao/state.dart';
import 'package:my_app/test/list.dart';
import '';
import '../webDome/first.dart';



double APPBAR_SCROLL_OFFSET = 100;
class HomePageState extends StatefulWidget {
  const HomePageState({super.key});

  @override
  State<HomePageState> createState() => _HomePageState();
}


class _HomePageState extends State<HomePageState> {

  final List _imageUrls = [
    'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-53aebf66-c1dd-41a2-bc07-db6afd0d5330/4bab0410-bf69-4ef7-bc15-b7aa80c46997.jpg',
    'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-53aebf66-c1dd-41a2-bc07-db6afd0d5330/8deff55e-1b39-4763-acd8-e8a12321aa8f.jpg',
    'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-53aebf66-c1dd-41a2-bc07-db6afd0d5330/305cb1ba-9b99-4037-94b4-3b0a70d36512.jpg'
  ];
  double appBarAlpha = 0;

  _onScroll(offset){
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if(alpha < 0){
      alpha = 0;
    }else if(alpha > 1){
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: NotificationListener(
                  onNotification: (notification){
                    if(notification is ScrollUpdateNotification  && notification.depth == 0){
                      //滚动且是列表滚动的时候
                      _onScroll(notification.metrics.pixels);
                    }
                    return true;
                  },
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 160,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(
                              _imageUrls[index],
                              fit: BoxFit.fill,
                            );
                          },
                          itemCount: _imageUrls.length,
                          viewportFraction: 0.8,
                          scale: 0.9,
                        ) ,
                      ),
                      GestureDetector(
                        child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("列表")
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const TestListPage(
                                    username: "donning",
                                    password: "123456",
                                  )
                              )
                          );
                        },
                      ),
                      GestureDetector(
                        child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("WebDome First")
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const WebDomeFirst()
                              )
                          );
                        },
                      ),
                      GestureDetector(
                        child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("猫哥有状态无状态")
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const MaoStateTest()
                              )
                          );
                        },
                      ),
                      GestureDetector(
                        child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("猫哥输入框")
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const MaoGeInput()
                              )
                          );
                        },
                      ),
                    ],
                  ),
                )
            ),
            Opacity(
              opacity: appBarAlpha,
              child: Container(
                height: 80,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('首页'),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}







