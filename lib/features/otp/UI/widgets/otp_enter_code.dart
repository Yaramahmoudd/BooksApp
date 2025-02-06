import 'package:flutter/material.dart';

import '../../../../core/widgets/app_otp_text_field.dart';

class OtpEnterCode extends StatefulWidget {
  List<TextEditingController>controllers;
  List<FocusNode>focusNodes;
  List<bool>isFilled;
   OtpEnterCode({super.key,
   required this.focusNodes,
   required this.controllers,
   required this.isFilled
  });

  @override
  State<OtpEnterCode> createState() => _OtpEnterCodeState();
}

class _OtpEnterCodeState extends State<OtpEnterCode> {
  void initState() {
    super.initState();
    for (int i = 0; i <widget. controllers.length; i++) {
     widget. controllers[i].addListener(() {
        setState(() {
         widget. isFilled[i] = widget. controllers[i].text.trim().isNotEmpty;
         print("this box is ${widget. isFilled[i]}" );
        });
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) {
          return OtpInputField(
            isFind: widget.isFilled[index],
            controller: widget.controllers[index],
            focusNode:widget. focusNodes[index],
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < 3) {
                  FocusScope.of(context).requestFocus(
                      widget. focusNodes[index + 1]); // الانتقال للحقل التالي
                } else {
                  widget. focusNodes[index]
                      .unfocus(); // إغلاق الكيبورد عند آخر حقل
                }
              }
            },
            validator: (value){
              if(value==null || value.isEmpty){
                return"مطلوب";
              }
            },
          );
        }),
      ),
    );
  }
}
