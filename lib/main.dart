import 'package:flutter/material.dart';

void main()=>runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String _selectedGender=null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DropDown",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drop Down'),
        ),
        body: Center(
          child: DropdownButton(
            value: _selectedGender,
              items: _dropDownItem(),
              onChanged: (value){
                _selectedGender=value;
                setState(() {
                });
              },
            hint: Text('Select Gender'),
          ),
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> _dropDownItem(){
  List<String> ddl=["Male","Female","Others"];
  return ddl.map(
      (value)=>DropdownMenuItem(
        value: value,
        child: Text(value),
      )
  ).toList();
}