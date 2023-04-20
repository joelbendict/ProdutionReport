import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _output = '';
  String _materials = '';
  String _boxWeight = '';
  String _downtime = '';
  String _percentageLoss = '';
  String _casualIndex = '';
  String _remark = '';

  Future<void> _sendEmail() async {
    final Email email = Email(
      body:
          'Total Output: $_output\nMaterials: $_materials\nBox Weight: $_boxWeight\nDowntime: $_downtime\nPercentage Loss: $_percentageLoss\nCasual index: $_casualIndex\nRemark: $_remark',
      subject: 'Production Report',
      recipients: ['joelbendict24@gmail.com'],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner:
            false, // Add this line to remove the debug banner
        home: Scaffold(
            appBar: AppBar(
              title: Text('Production Report'),
            ),
            drawer: AnimatedContainer(
              duration: Duration(microseconds: 100),
              width: 270,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Text('PaperToils(U)Ltd.'),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  // child:
                  ListTile(
                    leading: Icon(Icons.dashboard),
                    title: Text('Dash Board'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(),
                        ),
                      );
                    },
                  ),
                  //),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  // child:
                  ListTile(
                    leading: Icon(Icons.analytics),
                    title: Text('Analytics'),
                    onTap: () {},
                  ),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  // child:
                  ListTile(
                    leading: Icon(Icons.production_quantity_limits),
                    title: Text('Production Plan'),
                    onTap: () {},
                  ),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  // child:
                  ListTile(
                    leading: Icon(Icons.warning),
                    title: Text('Alerts'),
                    onTap: () {},
                  ),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  // child:
                  ListTile(
                    leading: Icon(Icons.bar_chart),
                    title: Text('MTD Performance'),
                    onTap: () {},
                  ),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  // child:
                  ListTile(
                    leading: Icon(Icons.insert_chart),
                    title: Text('Chart'),
                    onTap: () {},
                  ),
                  // ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Total Output:'),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Boxes',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text('Materials:'),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Jumboes Rewinded',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text('Box Weight:'),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Weight',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text('Downtime:'),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Time',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text('Percentage Loss:'),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '%Loss',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text('Casual index:'),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Manpower',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Text('Remark:'),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Please Insert Remark',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      ElevatedButton(
                        onPressed: () {
                          _sendFormData();
                        },
                        child: Text('Submit'),
                      ),
                    ]),
              ),
            )));
  }

  Future<void> _sendFormData() async {
    final url = Uri.parse(
        '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');
    final response = await http.post(
      url,
      body: {
        'total_output': _output.toString(),
        'materials': _materials.toString(),
        'box_weight': _boxWeight.toString(),
        'downtime': _downtime.toString(),
        'percentage_loss': _percentageLoss.toString(),
        'casual_index': _casualIndex.toString(),
        'remark': _remark.toString(),
      },
    );

    if (response.statusCode == 200) {
      print('Form data sent successfully!');
    } else {
      throw Exception('Failed to send form data!');
    }
  }
}
