import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/features/profile/ui/components/add_book_cover.dart';
import 'package:books_app/features/profile/ui/components/app_book_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddBookScreen extends StatefulWidget {
  const AddBookScreen({super.key});

  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  int currentStep = 0;
  int progress = 75;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('اضافة كتاب', style: TextStyles.font22blackMedium),
          centerTitle: true,
        ),
        body: Theme(
          data: Theme.of(context).copyWith(canvasColor: ColorsManager.white),
          child: Stepper(
            elevation: 0,
            connectorColor:
                const WidgetStatePropertyAll(ColorsManager.primaryColor),
            type: StepperType.horizontal,
            controlsBuilder: (context, details) {
              if (currentStep == 0) {
                return AppTextButton(
                    buttonText: 'التالي',
                    textStyle: TextStyles.font16whiteBold,
                    backgroundColor: ColorsManager.primaryColor,
                    onPressed: () => setState(() => currentStep++));
              }
              return AppTextButton(
                buttonText: 'نشر',
                textStyle: TextStyles.font16whiteBold,
                backgroundColor: ColorsManager.primaryColor,
                onPressed: () {
                  context.pop();
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            content: Container(
                              padding: EdgeInsets.only(
                                  right: 20.w, left: 20.w, top: 20.h),
                              height: 300.h,
                              width: 350.h,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: 120.h,
                                    width: 120.w,
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        CircularProgressIndicator(
                                          value: progress / 100,
                                          strokeWidth: 6,
                                          backgroundColor: ColorsManager.greyF5,
                                          valueColor:
                                              const AlwaysStoppedAnimation<
                                                      Color>(
                                                  ColorsManager.primaryColor),
                                        ),
                                        Center(
                                          child: Text(
                                            "${progress.toInt()}%",
                                            textAlign: TextAlign.center,
                                            style: TextStyles
                                                .font24primaryColorRegular,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  verticalSpace(30),
                                  Text('يتم نشر كتابك',
                                      style: TextStyles.font16primaryColorBold),
                                  const Spacer(),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          child: Text('الغاء',
                                              style:
                                                  TextStyles.font16blackMedium),
                                          onPressed: () {
                                            context.pop();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                backgroundColor:
                                                    ColorsManager.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.r)),
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10.w,
                                                    vertical: 22.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.w,
                                                    vertical: 18.h),
                                                elevation: 6,
                                                content: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        AppIcons.correctCircle,
                                                        height: 24.h,
                                                        width: 24.w),
                                                    horizontalSpace(10),
                                                    Text('تم نشر كتابك بنجاح.',
                                                        style: TextStyles
                                                            .font16blackMedium),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ));
                      });
                },
              );
            },
            currentStep: currentStep,
            onStepTapped: (step) {
              setState(() {
                currentStep = step;
              });
            },
            steps: [
              Step(
                title:
                    Text('خطوة 1', style: TextStyles.font14primaryColorMedium),
                subtitle: Text('اضف تفاصيل الكتاب',
                    style: TextStyles.font12primaryColorRegualar),
                content: const AddBookDetails(),
                isActive: currentStep == 0,
              ),
              Step(
                title:
                    Text('خطوة 2', style: TextStyles.font14primaryColorMedium),
                subtitle: Text('اضف غلاف ',
                    style: TextStyles.font12primaryColorRegualar),
                content: const AddBookCover(),
                isActive: currentStep == 1,
              ),
            ],
          ),
        ));
  }
}
