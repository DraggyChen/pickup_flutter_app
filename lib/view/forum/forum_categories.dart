import 'package:flutter/material.dart';

class ForumCategories extends StatefulWidget {
  final List<String> items;

  ForumCategories({required this.items});

  @override
  _ForumCategoriesState createState() => _ForumCategoriesState();
}

class _ForumCategoriesState extends State<ForumCategories> {
  int? selectedButtonIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,  // 指定固定的高度
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          // 判斷是否被選中
          bool isSelected = index == selectedButtonIndex;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  // 如果已經選中則取消選中，否則選中該按鈕
                  if (isSelected) {
                    selectedButtonIndex = null;
                  } else {
                    selectedButtonIndex = index;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                /* Button邊框、背景顏色 */
                foregroundColor: isSelected ? Colors.white : const Color(0XFFD6D6D6),
                backgroundColor: isSelected ? const Color(0XFF424242) : Colors.white,
                /* 大小及圓角設置 */
                minimumSize: Size(85, double.infinity), // 最小高度為無窮大，這將使它填滿容器
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                  widget.items[index],
                style: TextStyle(
                  fontSize: 20,
                  color: isSelected? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
