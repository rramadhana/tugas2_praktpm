import 'package:flutter/material.dart';
import 'identity.dart';

class HalamanDetail extends StatefulWidget {
  final Identity person;
  const HalamanDetail({Key? key, required this.person}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}
class _HalamanDetailState extends State<HalamanDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.person.name),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(1),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal:1),
                    child: Image.network(widget.person.fotoUrls[index]),
                  ),
                ),
              ),

              Container(
                child: Text(
                  widget.person.name ,
                  style: TextStyle(fontSize: 20),
                ),
                padding: EdgeInsets.all(5),
              ),

              Container(
                child: Text('Name :      ' + widget.person.name,),
                padding: EdgeInsets.all(5),
              ),

              Container(
                child: Text('Username :      ' + widget.person.username),
                padding: EdgeInsets.all(5),
              ),

              Container(
                child: Text('Email :      ' + widget.person.email.toString()),
                padding: EdgeInsets.all(5),
              ),

              Container(
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 150,
                      child: Column(
                        children: [
                          Text('Company : '),
                          Text(widget.person.company.map((e) => e.join(", ")).join("; ")),
                        ],
                      )),
                  ],
                ),
              ),
            ]),
        ),
      ),
    );
  }
}