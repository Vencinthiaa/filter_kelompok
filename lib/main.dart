import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff6200ee),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Colored Chips
  Container myColoredChips(String chipName) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        child: Text(
          chipName,
          style: TextStyle(
            color: new Color(0xff6200ee),
          ),
        ),
        onPressed: () {},
      ),
    ));
  }

  //Grey Chips
  Container myChips(String chipName) {
    return Container(
      child: ElevatedButton(
        child: Text(
          chipName,
          style: TextStyle(
            color: new Color(0xff6200ee),
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  //Divider
  Container categoryDivider() {
    return Container(
      height: 1.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.times,
          color: Colors.white,
        ),
        title: Text("Filter results"),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.ellipsisV),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          //Offer heading
          Container(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Harga',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),

          //Chips
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 5.0,
            children: <Widget>[
              myChips("Rp.50.000"),
              myChips("Rp.100.000"),
              myChips("Rp.150.000"),
              myChips("Rp.200.000"),
              myChips("Rp.250.000"),
            ],
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Category',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),

          //Chips
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 5.0,
            children: <Widget>[
              myChips("Kaos"),
              myChips("Kemeja"),
              myChips("Sepatu"),
              myChips("Topi"),
              myChips("Celana"),
              myChips("Tas"),
              myChips("Hoodie"),
              myChips("Rok"),
            ],
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Lokasi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),

          //Chips
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 5.0,
            children: <Widget>[
              myChips("Medan"),
              myChips("Jakarta"),
              myChips("Lampung"),
              myChips("Depok"),
              myChips("Malang"),
              myChips("Aceh"),
              myChips("Bandung"),
              myChips("Bali"),
            ],
          ),

          categoryDivider(),
        ],
      ),
    );
  }
}
