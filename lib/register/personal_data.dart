import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class PersonalData extends StatefulWidget{
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData>{
  final TextEditingController _usernameController = TextEditingController();

  /* 手機號碼 and Formatter */
  final TextEditingController _phoneController = TextEditingController();
  final maskFormatter = MaskTextInputFormatter(
    mask: '+886-###-###-###',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '+886-',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text("基本資料"),

            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "姓名",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            /* 手機號碼 */
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: "手機號碼",
                border: OutlineInputBorder(),
                hintText: '+886-###-###-###'
              ),
              inputFormatters: [maskFormatter],
              keyboardType: TextInputType.phone,
            ),



          ],
        ),
      ),
    );
  }
  
}