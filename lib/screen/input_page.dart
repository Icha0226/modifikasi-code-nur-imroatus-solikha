import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var _formKey = GlobalKey<FormState>();
  var _controllerUserName = TextEditingController();
  var _controllerPassword = TextEditingController();

  var _prodi = "Sistem Informasi";

  List<String> _mk = [
    "E-Bisnis",
    "Keamanan Sistem Informasi",
    "Tata Kelola Teknologi Informasi",
    "Sistem Enterprise",
    "Pemrograman Web",
    "Analisis Desain Sistem Informasi",
    "Administrasi Basis Data"
  ];

  List<String> _selectDays = [];

  var _darkMode = false;

  double _slider = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Input KRS",
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "Userame",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Data Diri",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textFormField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Program Studi",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _radio(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Daftar Mata Kuliah",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _checkBox(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Switch",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _switch(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Slider",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _sliderWitDivision(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Detail Info",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => openModalBootmSheet(),
            child: Text(
              'Show',
            ),
          ),
        ],
      ),
    );
  }

  Padding _sliderWitDivision() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Slider(
        value: _slider,
        min: 0,
        max: 10,
        label: '$_slider',
        divisions: 20,
        onChanged: (value) {
          setState(() => _slider = value);
        },
      ),
    );
  }

  ListTile _switch() {
    return ListTile(
      onTap: () => setState(() => _darkMode = !_darkMode),
      title: Text("Dark Mode"),
      trailing: Switch(
        value: _darkMode,
        onChanged: (value) => setState(() => _darkMode = value),
      ),
    );
  }

  Column _checkBox() {
    return Column(
        children: List.generate(_mk.length, (index) {
      String day = _mk[index];
      return CheckboxListTile(
        title: Text(day),
        value: _selectDays.contains(day),
        onChanged: (value) {
          if (value!) {
            _selectDays.add(day);
          } else {
            _selectDays.remove(day);
          }
          setState(() {});
          print(_selectDays);
        },
      );
    }));
  }

  Column _radio() {
    return Column(
      children: [
        ListTile(
          onTap: () => setState(() => _prodi = 'Sistem Informasi'),
          leading: Radio(
            value: "Sistem Informasi",
            groupValue: _prodi,
            onChanged: (value) {
              setState(() => _prodi = value.toString());
            },
          ),
          title: Text("Sistem Informasi"),
        ),
        ListTile(
          onTap: () => setState(() => _prodi = 'Teknik Informatika'),
          leading: Radio(
            value: "Teknik Informatika",
            groupValue: _mk,
            onChanged: (value) {
              setState(() => _prodi = value.toString());
            },
          ),
          title: Text("Teknik Informatika"),
        ),
        ListTile(
          onTap: () => setState(() => _prodi = 'Sains Data'),
          leading: Radio(
            value: "Sains Data",
            groupValue: _mk,
            onChanged: (value) {
              setState(() => _prodi = value.toString());
            },
          ),
          title: Text("Sains Data"),
        ),
      ],
    );
  }

  Padding _textFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) => value == '' ? "Dont Empty" : null,
              controller: _controllerUserName,
              decoration: InputDecoration(labelText: 'Nama Lengkap'),
            ),
            TextFormField(
              validator: (value) => value == '' ? "Dont Empty" : null,
              controller: _controllerPassword,
              decoration: InputDecoration(labelText: 'NPM'),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_controllerUserName.text);
                  print(_controllerPassword.text);
                  //.......
                }
              },
              child: Text(
                "Submit",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _textField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          TextField(
            obscureText: true,
            controller: TextEditingController(),
            decoration: const InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: Icon(Icons.visibility),
            ),
          )
        ],
      ),
    );
  }

  void openModalBootmSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children:  [
             const SizedBox(
                height: 8,
              ),
             const Divider(
                thickness: 3,
                color: Colors.grey,
                indent: 150,
                endIndent: 150,
              ),
              ListTile(
                title: Text("Informasi Tambahan"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return ListTile(
                      onTap: (){},
                      title: Text("Bagi mahasiswa Fakultas Ilmu Komputer UPN Veteran Jawa Timur dapat melakukan KRS pada tanggal 18 - 25 September 2021.\nMohon perhatikan tanggal pengisian KRS karena tidak ada perpanjangan waktu.\nBatas maksimal KRS yang dapat diambil yaitu 24 SKS."),
                    );
                  }
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
