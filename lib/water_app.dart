import 'package:flutter/material.dart';
import 'package:flutter_ostad/water_consume.dart';
import 'package:intl/intl.dart';
//import 'water_consume.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WaterConsume> waterConsumeList = [];
  final TextEditingController _noOfGlassesTEConrolar =
      TextEditingController(text: '1');
  final TextEditingController _noteOfGlassesTEConrolar =
      TextEditingController(text: 'Morning');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Traker'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {
                      if (_noOfGlassesTEConrolar.text.trim().isEmpty) {
                        _noOfGlassesTEConrolar.text = '1';
                      }
                      final noOfGlasses = _noOfGlassesTEConrolar.text.trim();
                      int value = int.tryParse(noOfGlasses) ?? 1;
                      // waterConsumeList.add(
                      //   WaterConsume(value, DateTime.now(),
                      //       _noteOfGlassesTEConrolar.text),);
                      waterConsumeList.insert(0,
                        WaterConsume(value, DateTime.now(),
                            _noteOfGlassesTEConrolar.text),);
                      setState(() {});
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        border: Border.all(color: Colors.deepOrange, width: 4),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text(
                        'Tap to Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                        child: TextField(
                          controller: _noOfGlassesTEConrolar,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          controller: _noteOfGlassesTEConrolar,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
                //reverse: true,
                itemCount: waterConsumeList.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        waterConsumeList[index].noOfGlass.toString(),
                      ),
                    ),
                    title: Text(waterConsumeList[index].note),
                    subtitle: Text(DateFormat.yMEd().add_jms().format(waterConsumeList[index].time)),
                    trailing: IconButton(
                        onPressed: (){
                          waterConsumeList.removeAt(index);
                          setState(() {});
                        },
                        icon: const Icon(Icons.delete)),
                  );
                })
          ],
        ),
      ),
    );
  }
}
