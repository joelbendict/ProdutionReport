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

  class MyDrawer extends StatelessWidget {
    final BuildContext parentContext;

    MyDrawer(this.parentContext);

    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: Scaffold(
          appBar: AppBar(
            title: Text('PaperToils(U)Ltd.'),
          ),
          body: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'PaperToils(U)Ltd.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dash Board'),
                onTap: () {
                  print('Dashboard tapped');
                  Navigator.push(
                    parentContext,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.analytics),
                title: Text('Analytics'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.production_quantity_limits),
                title: Text('Production Plan'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text('Alerts'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.bar_chart),
                title: Text('MTD Performance'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.insert_chart),
                title: Text('Chart'),
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Production Report'),
        ),
        drawer: MyDrawer(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Total Output:'),
                  TextField(
                    decoration: InputDecoration(),
                    hintText: 'Boxes',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
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
              ],
            ),
          );

  Future<void> _sendFormData() async {
    final Email email = Email(
      body:
          'Total Output: $_output\nMaterials: $_materials\nBox Weight: $_boxWeight\nDowntime: $_downtime\nPercentage Loss: $_percentageLoss\nCasual index: $_casualIndex\nRemark: $_remark',
      subject: 'Production Report',
      recipients: ['joelbendict24@gmail.com'],
    );

    await FlutterEmailSender.send(email);
  }