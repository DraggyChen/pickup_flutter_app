import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CircleImagePicker extends StatefulWidget {
  final String hint;
  final double diameter;

  const CircleImagePicker({required this.hint, required this.diameter});

  @override
  _CircleImagePickerState createState() => _CircleImagePickerState();
}

class _CircleImagePickerState extends State<CircleImagePicker> {
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
        width: widget.diameter,
        height: widget.diameter,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: _imageFile != null
            ? ClipOval(
          child: Image.file(
            File(_imageFile!.path),
            fit: BoxFit.cover,
            width: widget.diameter,
            height: widget.diameter,
          ),
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
