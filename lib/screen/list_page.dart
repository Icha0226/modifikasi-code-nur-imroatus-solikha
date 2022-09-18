import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Mahasiswa"),
        titleSpacing: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("NUR IMRO'ATUS SOLIKHA"),
            subtitle: Text("20082010014"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/id/200/200/300"),
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("NURUL HAKIMA"),
            subtitle: Text("20082010018"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/201/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("ALFI SAFIRA AZ ZAHRAH"),
            subtitle: Text("20082010022"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/202/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("DIVA DAFINA AMAJIDA"),
            subtitle: Text("20082010036"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/203/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("RISKA HARUM DIAN SARI"),
            subtitle: Text("20082010021"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/20/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("NOVA FITRI YANI"),
            subtitle: Text("20082010028"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/23/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("NUR TSALITSNA IMAMAH"),
            subtitle: Text("20082010029"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/206/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("PUTRI AYU PITRIA"),
            subtitle: Text("20082010030"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/208/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("FARADEWI KIRANA"),
            subtitle: Text("20082010008"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/209/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("IMAS NUR FADHILA"),
            subtitle: Text("20082010027"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/210/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("GIZKA REFYANA PUTRI"),
            subtitle: Text("20082010002"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/211/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("RAHAYU EKA FITRIANI"),
            subtitle: Text("20082010031"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/212/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("NURUL YUNI ADILLAH"),
            subtitle: Text("20082010033"),
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor : Colors.transparent,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/id/213/200/300"),
            ),
            onTap: (){},
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}