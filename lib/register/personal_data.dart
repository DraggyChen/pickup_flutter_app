import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pickup/style/styles.dart';

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  /* 姓名 */
  final TextEditingController _usernameController = TextEditingController();

  /* 手機號碼 and Formatter */
  final TextEditingController _phoneController = TextEditingController();
  final maskFormatter = MaskTextInputFormatter(
    mask: '+886-###-###-###',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '+886-',
  );

  /* 性別 */
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "基本資料",
              style: CustomStyles.topTitleStyle,
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "姓名",
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),

            /* 手機號碼 */
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                  labelText: "手機號碼",
                  border: UnderlineInputBorder(),
                  hintText: '+886-###-###-###'),
              inputFormatters: [maskFormatter],
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),

            /* 性別選擇 */
            Align(
              alignment: Alignment.centerLeft,
              child: Text("性別"),
            ),
            Row(
              children: [
                Expanded(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                      title: const Text("男"),
                      leading: Radio<String>(
                          value: '男',
                          groupValue: _selectedGender,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          })),
                )),
                Expanded(
                  child: ListTile(
                      title: const Text("女"),
                      leading: Radio<String>(
                        value: "女",
                        groupValue: _selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
