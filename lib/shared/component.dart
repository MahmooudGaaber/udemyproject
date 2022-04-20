 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextField ({
   required controller ,
  textperfixicon,
  texthint,
  validatewrongdatatext,
}) =>TextFormField(
  controller: controller,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return validatewrongdatatext;
    }
    return null;
  },
  decoration:  InputDecoration(
    prefixIcon: textperfixicon,
    hintText: texthint ,
    border: OutlineInputBorder(),
  ),
);

Widget defaultMaterialButton ({
   buttoncolor ,
  buttonwork ,
  buttontext ,
 }) => MaterialButton(
  color: buttoncolor,
  onPressed: buttonwork,
  child:  Text(
    buttontext,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 18.0,
    ),
  ),
);