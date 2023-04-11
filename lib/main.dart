import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                  ListTile(
                    title: Text('Dash Board'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Analytics'),
                    onTap: () {
                      // Handle option 2 press
                    },
                  ),
                  ListTile(
                    title: Text('P.P'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Alerts'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('MTD Performance'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Chart'),
                    onTap: () {},
                  ),
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
                          //onpress
                        },
                        child: Text('Submit'),
                      ),
                    ]),
              ),
            )));
  }
}
