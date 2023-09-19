import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pickup/style/styles.dart';
import 'package:pickup/utils/ImagePickerWidget.dart';


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
  static const String men = "男";
  static const String women = "女";

  /* 學校 */
  String? _selectedUniversity;
  static const String uni_CGU = "長庚大學CGU";
  static const String uni_CGUST = "長庚科技大學CGUST";
  static const String uni_NTSU = "體育大學NTSU";

  /* 學生證 */

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
                    child: ListTile(
                  title: const Text(men),
                  leading: Radio<String>(
                      value: men,
                      groupValue: _selectedGender,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      }),
                )),
                Expanded(
                  child: ListTile(
                      title: const Text(women),
                      leading: Radio<String>(
                        value: women,
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

            /* 學校選擇 */
            Align(
              alignment: Alignment.centerLeft,
              child: Text("學校"),
            ),
            Row(
              children: [
                Radio<String>(
                  value: uni_CGU,
                  groupValue: _selectedUniversity,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedUniversity = value;
                    });
                  },
                ),
                Text(uni_CGU),
                Radio<String>(
                  value: uni_CGUST,
                  groupValue: _selectedUniversity,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedUniversity = value;
                    });
                  },
                ),
                Text(uni_CGUST),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: uni_NTSU,
                  groupValue: _selectedUniversity,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedUniversity = value;
                    });
                  },
                ),
                Text(uni_NTSU),
              ],
            ),
            SizedBox(height: 20,),

            /* 學生證或教職員工作證 */
            Align(
              alignment: Alignment.centerLeft,
              child: Text("學生證或教職員工作證"),
            ),
            SizedBox(height: 20,),
            ImagePickerWidget(hint: '正面(大頭照)', width: 200, height: 100),
            SizedBox(height: 20),
            ImagePickerWidget(hint: '反面(學校名稱)', width: 200, height: 100,),


          ],
        ),
      ),
    );
  }
}
