import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class MaoGeInput extends StatefulWidget {
  const MaoGeInput({Key? key}) : super(key: key);

  @override
  State<MaoGeInput> createState() => _MaoGeInputState();
}

class _MaoGeInputState extends State<MaoGeInput> {

  String _massage = "";

  FocusNode focusNodeName = FocusNode();
  FocusNode focusNodePassword = FocusNode();
  FocusScopeNode? focusScopeNode;

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  //账户
  Widget _buildName(){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextField(
        onSubmitted: (value){
          focusScopeNode ??=FocusScope.of(context);
          focusScopeNode?.requestFocus(focusNodePassword);
        },
        focusNode: focusNodeName,
        controller: _controllerName,
        autofocus: true,
        decoration: const InputDecoration(
            labelText: '用户名',
            hintText: '请输入',
            prefixIcon: Icon(Icons.person),
            suffixIcon: Icon(Icons.edit),
            border: OutlineInputBorder()
        ),
      ) ,
    );
  }

  Widget _buildPasWord(){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextField(
        onSubmitted: (value){

        },
        controller: _controllerPassword,
        focusNode: focusNodePassword,
        decoration: const InputDecoration(
            labelText: '密码',
            hintText: '请输入',
            prefixIcon: Icon(Icons.person),
            suffixIcon: Icon(Icons.edit),
            border: OutlineInputBorder()
        ),
      ) ,
    );
  }

  Widget _buildButton(){
    return SizedBox(
      width: 200,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(onPressed: (){
          setState(() {
            _massage = 'name:${_controllerName.text}, pass:${_controllerPassword.text}';
          });
        },
          child: const Text("登陆"),
        ),
      ),
    );
  }


  Widget _buildMessage(){
    return Text(_massage);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('猫哥input案例')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildName(),
            _buildPasWord(),
            _buildButton(),
            _buildMessage()
           /* MaoInputLogin(),
            MaoInputPasWord(),
            MaoInputSubmitBtn()*/
          ],
        ),
      ),
    );
  }
}






