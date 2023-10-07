import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;
  final DisplayOneController = TextEditingController();
  final DisplayTwoController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DisplayOneController.text = x.toString();
    DisplayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
    
        children: [
          
          CalculatorDisplay(
              hint: "Enter First Number", controller: DisplayOneController
              ),
          SizedBox(
            height: 30.0,
          ),
          CalculatorDisplay(
              hint: "Enter Second Number", controller: DisplayTwoController),
          SizedBox(
            height: 30.0,
          ),
          Text(
            z.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.parse(DisplayOneController.text) +
                        num.parse(DisplayTwoController.text);
                  });
                },
                child: const Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.parse(DisplayOneController.text) -
                        num.parse(DisplayTwoController.text);
                  });
                },
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.parse(DisplayOneController.text) *
                        num.parse(DisplayTwoController.text);
                  });
                },
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.parse(DisplayOneController.text) /
                        num.parse(DisplayTwoController.text);
                  });
                },
                child: const Icon(CupertinoIcons.divide),
              ),
              
             ]     ),
             const SizedBox(height: 30,),
           FloatingActionButton.extended(onPressed:(){
                setState(() {
                  x = 0;
                  y = 0;
                  z = 0;
                  DisplayOneController.clear();
                  DisplayTwoController.clear();
                }); },
              label: const Text("Clear"),
              )
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay(
      {super.key, this.hint = "Enter a Number", required this.controller});
  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 5.0,
            ),
            borderRadius: BorderRadius.circular(9.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(9.0),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black)),
    );
  }
}
