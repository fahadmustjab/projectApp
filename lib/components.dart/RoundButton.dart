// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/components.dart/Colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  String title;
  final VoidCallback onTap;
  final bool loading;
  RoundButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  )
                : Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  )),
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
