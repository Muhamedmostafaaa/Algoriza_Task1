import 'package:flutter/material.dart';

class Textformfield_design extends StatelessWidget{
  String? hintstring;
  Widget? icon;
  Textformfield_design({required this.hintstring,this.icon});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
          hintText: 'Eg: example@email.com',
          hintStyle: TextStyle(color: Colors.black12),
          border: OutlineInputBorder(gapPadding: 2),
        suffixIcon: icon
      ),

      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    )
      ;
  }

}