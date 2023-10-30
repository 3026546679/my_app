import 'package:flutter/material.dart';

class WelcomePages extends StatelessWidget {
  const WelcomePages({Key? key}) : super(key: key);

  Widget _buildView(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTitle(),
        _buildImage(),
        _buildBtns()
      ],
    );
  }

  Padding _buildTitle() {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "Browse & Order All Products at Any Time",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 23 / 20
          ),
        ),
      );
  }

  Image _buildImage(){
    return Image.asset(
      'assets/images/welcome-page.png',
      height: 224,
      width: double.infinity,
      fit: BoxFit.fitWidth,
    );
  }

  Padding _buildBtns(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [

          const TextButton(
              onPressed: null,
              child: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff2B2A2A)
                ),
              ),
          ),

          const Expanded(child: SizedBox()),

          Container(
              height: 42,
              width: 140,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                      Radius.circular(18)
                  )
              ),
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    minimumSize: MaterialStateProperty.all(Size.zero)
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white
                  ),
                ),
              ),
            ),


        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildView(),
    );
  }
}
