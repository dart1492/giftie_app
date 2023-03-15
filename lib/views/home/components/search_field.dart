import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController controller = TextEditingController();
  double xShadowOffset = 0;
  double yShadowOffset = 0;
  String previousFieldValue = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      onEnd: () {},
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(xShadowOffset, yShadowOffset),
        ),
      ], borderRadius: BorderRadius.circular(5)),
      child: TextField(
        scribbleEnabled: false,
        mouseCursor: null,
        onChanged: (value) {
          int diff = value.length - previousFieldValue.length;
          if (diff > 0) {
            if (xShadowOffset > -6) {
              setState(() {
                previousFieldValue = value;
                xShadowOffset -= 0.5 * diff.abs();
              });
            }
          } else {
            if (xShadowOffset < 6) {
              setState(() {
                previousFieldValue = value;
                xShadowOffset += 0.5 * diff.abs();
              });
            }
          }
        },
        controller: controller,
        onTap: () {
          setState(() {
            xShadowOffset = 6;
            yShadowOffset = 7;
          });
        },
        onSubmitted: (value) {
          setState(() {
            xShadowOffset = 0;
            yShadowOffset = 0;
          });
        },
        style: Theme.of(context).textTheme.titleLarge,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: AppColors.plainBlack,
        decoration: InputDecoration(
          fillColor: AppColors.plainWhite,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: AppColors.plainBlack,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.plainBlack, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.plainBlack, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
