import 'package:flutter/material.dart';
import 'Spesifik_Mobil.dart';

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class DetailMobil extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;
  final String transmision;

  DetailMobil(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path,
      required this.transmision});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Sewa Mobil"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            brand,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMobil(
                name: '12 Bulan',
                price: price * 12,
                name2: 'Dollars',
              ),
              SpesifikMobil(
                name: '6 Bulan',
                price: price * 6,
                name2: 'Dollars',
              ),
              SpesifikMobil(
                name: '1 Bulan',
                price: price * 1,
                name2: 'Dollars',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMobil(
                name: 'Warna',
                price: 2,
                name2: color,
              ),
              SpesifikMobil(
                name: 'Gearbox',
                trans: 'Manual',
                name2: gearbox,
              ),
              SpesifikMobil(
                name: 'Bahan Bakar',
                name2: fuel,
              )
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              primary: Colors.blueAccent,
              padding: EdgeInsets.all(10.0),
            ),
            onPressed: () {
              _showSimpleDialog(context);
            },
            child: Text(
              'Rental',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
          //RaisedButton(
          //shape:
          //RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //onPressed: (){
          //_showSimpleDialog(context);
          //},
          //padding: EdgeInsets.all(10.0),
          //color: Colors.blueAccent,
          //child: Text(
          //'Rental',
          //style: TextStyle(fontSize: 20, color: Colors.white),
          //),
          //)
        ],
      ),
    );
  }
}
