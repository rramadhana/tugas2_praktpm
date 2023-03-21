import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'identity.dart';
import 'detail_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main page'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: listIdentity.length,
          itemBuilder: (context, index) {
            final person = listIdentity[index];

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HalamanDetail(person:person )
                          )
                      );
                    },
                    title: Text(person.name),
                    leading: Image.network(
                        person.fotoUrls[0],
                      fit: BoxFit.cover,
                      width: 300,
                      height: 200,
                    ),
                  ),
                ),
              ],
            );
          }
      ),
    );
  }
}