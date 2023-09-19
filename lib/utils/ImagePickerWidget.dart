import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  final String hint;

  const ImagePickerWidget({required this.hint});

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? _imageFile;

  void _pickImage() async {
    try {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);

      setState(() {
        _imageFile = image;
      });
    } catch (e) {
      print('Error picking image: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        width: double.infinity,
        height: 200.0, // 設置您想要的高度
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: _imageFile != null
            ? Image.file(
                File(_imageFile!.path),
                fit: BoxFit.cover,
              )
            : Center(
                child: Text(
                  widget.hint,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
      ),
    );
  }
}
