import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_otp_text_field.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/core/widgets/custom_svg.dart';
import 'package:books_app/features/otp/UI/widgets/otp_app_bar.dart';
import 'package:books_app/features/otp/UI/widgets/otp_enter_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();
  List<bool> isFilled = List.generate(4, (index) => false);
  @override

  void initState() {
    super.initState();
    controllers[0].addListener(() {
      setState(() {}); // إعادة بناء الواجهة عند تغير النص
    });
  }
  void dispose(){
    super.dispose();
    for(int i=0;i<4;i++){
      controllers[i].dispose();
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200), child: OtpAppBar()),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
            child: Form(
              key: FormKey,
              child: Column(
                children: [
                  Center(child: CustomSvg(imgPath: AppIcons.otp_beige1)),
                  verticalSpace(50),
                  OtpEnterCode(
                      focusNodes: focusNodes, controllers: controllers,isFilled:isFilled,),
                  verticalSpace(35),
                  AppTextButton(
                    buttonText: "تأكيد",
                    textStyle:controllers[0].text.trim().isEmpty
                        ? TextStyles.font18grey7DRegualar
                        : TextStyles.font16whiteBold,
                    onPressed: () {
                      if (FormKey.currentState!.validate())
                        context.pushNamed(Routes.newpassword);
                    },

                    backgroundColor: controllers[0].text.trim().isEmpty
                        ? ColorsManager.greyF5
                        : ColorsManager.primaryColor,
                  ),
                  verticalSpace(160),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "لم تستلم كود؟ ",
                        style: TextStyles.font16grey7DRegualar,
                      ),
                      Text(
                        "أرسل كود",
                        style: TextStyles.font16primaryColorBold,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
