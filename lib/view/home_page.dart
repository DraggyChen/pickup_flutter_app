import 'package:flutter/material.dart';
import 'package:pickup/style/styles.dart';
import 'package:pickup/utils/CircleImagePicker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 16.0 + MediaQuery.of(context).padding.top,
          left: 15.0,
          right: 15.0,
          bottom: 16.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 1),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.settings, size: 35,)),
              ),

              /* 頭貼、姓名、評分標題 */
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleImagePicker(hint: "頭貼", diameter: 120),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        // SizedBox(width: 1,),
                        Text(
                          "NAME",
                          style: CustomStyles.TitleUsernameStyle,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "4.5",
                          style: CustomStyles.TitleUsernameStyle,
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                        ),
                      ],
                    ),
                  )),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(width: 50),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
