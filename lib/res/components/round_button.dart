import 'package:flutter/material.dart';
import 'package:master_class/res/colors/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    this.buttonColor = AppColor.primaryButtonColor,
    this.textColor = AppColor.primaryTextColor,
    required this.title,
    required this.onpress,
    this.width = 60,
    this.height = 50,
    this.loading = false,
  }) : super(key: key);

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onpress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: loading
          ? Center(child: Center(child: CircularProgressIndicator()))
          : Center(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
    );
  }
}
