import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

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
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return AnimatedContainer(
      padding: const EdgeInsets.all(1),
      onEnd: () {},
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: colors.secondary,
            offset: Offset(xShadowOffset, yShadowOffset),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
        color: yShadowOffset == 0 ? colors.textMain : colors.secondary,
      ),
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
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: colors.textReversed,
            ),
        textAlignVertical: TextAlignVertical.center,
        cursorColor: colors.textReversed,
        decoration: InputDecoration(
          labelStyle: TextStyle(
            fontSize: 20,
            color: colors.textSecondary,
          ),
          fillColor: colors.primary,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: 'Search',
          prefixIcon: Icon(
            Icons.search,
            size: 30,
            color: colors.textReversed,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: colors.textMain,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colors.secondary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
