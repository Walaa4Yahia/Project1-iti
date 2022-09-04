import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled4/lib/screens/myButton.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

bool edit = false;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  Widget _buildSingleContainer({String? startText, String? endText}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child: Container(
        height: 55,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              startText!,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black45,
              ),
            ),
            Text(
              endText!,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSingleTextFormField({String? name}) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: name,
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8f8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: AssetImage("assets/images/userImage.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: edit == true
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildSingleTextFormField(name: "Walaa"),
                        _buildSingleTextFormField(name: "Walaa@gmail.com"),
                        _buildSingleTextFormField(name: "Female"),
                        _buildSingleTextFormField(name: "0187656565"),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildSingleContainer(
                          endText: "Essam Mahmoud",
                          startText: "Name",
                        ),
                        _buildSingleContainer(
                          endText: "Essam Mahmoud1234@gmail.com",
                          startText: "Email",
                        ),
                        _buildSingleContainer(
                          endText: "018123678955",
                          startText: "phone number",
                        ),
                        _buildSingleContainer(
                          endText: "Male",
                          startText: "Gender",
                        ),
                      ],
                    ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: Container(
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  child: MyButton(name: "Edit Profile", onPressed: () {})),
            ),
          ],
        ),
      ),
    );
  }
}
