import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numberOneTEContriller = TextEditingController();
  final TextEditingController _numberTwoTEContriller = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sum App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _numberOneTEContriller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Number One'),
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter number One';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _numberTwoTEContriller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Number Two'),
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter number Two';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double numOne = double.tryParse(
                                  _numberOneTEContriller.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _numberTwoTEContriller.text.trim()) ??
                              0;
                          double result = add(numOne, numTwo);
                          _result = result;
                          setState(() {});
                        }
                      },
                      child: Text('Add'),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double numOne = double.tryParse(
                                  _numberOneTEContriller.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _numberTwoTEContriller.text.trim()) ??
                              0;
                          double result = subs(numOne, numTwo);
                          _result = result;
                          setState(() {});
                        }
                      },
                      child: Text('Sub'),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: clear,
                      child: Text('Clear'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Result : $_result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }

  void clear() {
    _numberOneTEContriller.clear();
    _numberTwoTEContriller.clear();
    _result = 0;
    setState(() {

    });
  }

  double add(double numOne, double numTwo) {
    return numOne + numTwo;
  }

  double subs(double numOne, double numTwo) {
    return numOne - numTwo;
  }
}
