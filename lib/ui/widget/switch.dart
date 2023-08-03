import 'package:flutter/material.dart';
import 'package:web_messenger_bloc/ui/theme/app_color.dart';
import 'package:web_messenger_bloc/ui/theme/app_text.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: light,
          activeColor: Colors.white,
          activeTrackColor: Colors.green,
          inactiveThumbColor: AppColor.mainElement,
          inactiveTrackColor: Colors.grey.shade400,
          splashRadius: 20.0,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          },
        ),
        Text(
          light ? 'Открыт' : 'Закрыт',
          style: AppTextStyle.base.copyWith(
            color: light ? Colors.green : Colors.grey,
          ),
        )
      ],
    );
  }
}
