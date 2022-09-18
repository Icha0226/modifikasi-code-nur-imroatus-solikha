import 'package:flutter/material.dart';

class ListPageBuilder extends StatelessWidget {
  const ListPageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("List Dosen"),
        titleSpacing: 0,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, idx){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                  child: ListTile(
                    leading: Container(
                      height: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          "https://picsum.photos/id/$idx/200/300"
                        ),
                      ),
                    ),
                    title: Text ("Nama Dosen",
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Mata Kuliah yang Diampu"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    
                  ),
              ),
            ],
          );
          
        },
      ),
    );
  }
}
