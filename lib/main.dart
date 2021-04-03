import 'package:aplikasimp/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(AplikasiMp());
}
class AplikasiMp extends StatefulWidget {
  @override
  _AplikasiMpState createState() => _AplikasiMpState();
}

class _AplikasiMpState extends State<AplikasiMp> {


  List mahasiswa = [
    "Indra", "Fauzan", "Sulton", "Muhammad Ibnu"
  ];
  List nim = [
    "181011302111", "18101140212", "18101140112", "181011402132"
  ];

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bck.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Column(

            children: [
              Image(image: NetworkImage("https://i.pinimg.com/originals/53/23/81/532381c292d340838aebb8d2476134e4.png"), width: 200,),
              Text("06TPLE022", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amberAccent),),
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: mahasiswa.length,
                  itemBuilder: (context, i) {
                    return Card(child:
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => detailMhs(nama:mahasiswa[i], nim: nim[i],)));
                        },
                        title: Text(mahasiswa[i]),
                        subtitle: Text(nim[i]),
                        trailing:
                            i == 0?
                        Icon(Icons.star):null,
                        )
                      );
                  },
                ),
              )
            ],
          ),
        )
    ),
      );
  }
}
