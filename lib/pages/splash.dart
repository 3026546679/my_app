import 'package:flutter/material.dart';
import 'package:my_app/common/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  final duration = 10;
  int number = 0;

  Future<void> _timeCountDown() async {
    number = duration;
    for (var i = 0; i < duration; i++){
      await Future.delayed(const Duration(seconds: 1),(){
        if(mounted == true){
          setState(() {
            number --;
          });
        }
        if(number == 0){
          Navigator.pushNamed(context, "/welcome");
        }
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timeCountDown();
  }

  Widget _buildView (BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 图标
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(120 / 2)
                ),
              ),
              const FlutterLogo(size: 80)
            ],
          ),

          const SizedBox(height: 24),
          // 标题
          const Text(
              "Online Market",
              style: TextStyle(
                fontSize: 19,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 22 / 19
              ),
          ),

          const SizedBox(height: 27),

          // 倒计时
          Text(
            number > 0 ? "$number" : "done",
            style: const TextStyle(
              fontSize: 19,
              color: Colors.white,
              height: 22 / 19,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash,
      body: _buildView(context),
    );
  }
}
