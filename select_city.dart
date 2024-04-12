//import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:drop_down_list_menu/drop_down_list_menu.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class SelectCity extends StatelessWidget {
  const SelectCity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drop Down Cities',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const DropDown(), //AnimatedButtonDemo(),
    );
  }
}

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  _DropDownCities createState() => _DropDownCities();
}

class _DropDownCities extends State<DropDown> {
  final List<String> _list = [
    'Select City',
    'Calgary',
    'Edmonton',
    'Red Deer',
    'Lethbridge',
    'Airdrie'
  ];
  String _selectedCity = 'Select City';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drop Down Cities Menu'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: DropDownMenu(
                      title: 'Attuned Cities',
                      enabled: true,
                      values: _list,
                      value: _selectedCity,
                      onChanged: (value) {
                        setState(() {
                          _selectedCity = value!;
                        });
                      },
                    ),
                  ),
                ),
              ]),
        ));
  }
}

class AnimatedButtonDemo extends StatefulWidget {
  @override
  _AnimatedButtonDemoState createState() => _AnimatedButtonDemoState();
}

class _AnimatedButtonDemoState extends State<AnimatedButtonDemo> {
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    var submitTextStyle = const TextStyle(
        fontSize: 28,
        letterSpacing: 5,
        color: Colors.white,
        fontWeight: FontWeight.w300);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            AnimatedButton(
              //animatedOn: AnimatedOn.onHover,
              onPress: () {},
              height: 70,
              width: 200,
              text: 'SUBMIT',
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.orange]),
              selectedGradientColor: const LinearGradient(
                  colors: [Colors.pinkAccent, Colors.purpleAccent]),
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.LEFT_TO_RIGHT,
              textStyle: submitTextStyle,
              borderColor: Colors.white,
              borderWidth: 1,
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
