import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/features/profile/ui/components/add_book_cover.dart';
import 'package:books_app/features/profile/ui/components/app_book_details.dart';
import 'package:books_app/features/profile/ui/components/save_edits.dart';
import 'package:flutter/material.dart';

class EditBookScreen extends StatefulWidget {
  const EditBookScreen({super.key});

  @override
  State<EditBookScreen> createState() => _EditBookScreenState();
}

class _EditBookScreenState extends State<EditBookScreen> {
  int _currentStep = 0;
  int progress = 75;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('تعديل كتاب', style: TextStyles.font22blackMedium),
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
            if (_currentStep == 0) {
              return AppTextButton(
                  buttonText: 'التالي',
                  textStyle: TextStyles.font16whiteBold,
                  backgroundColor: ColorsManager.primaryColor,
                  onPressed: () => setState(() => _currentStep++));
            }

            return AppTextButton(
              buttonText: 'حفظ التعديلات',
              textStyle: TextStyles.font16whiteBold,
              backgroundColor: ColorsManager.primaryColor,
              onPressed: () {
                context.pop();
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return SaveEdits(progress: progress);
                    });
              },
            );
          },
          currentStep: _currentStep,
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
            });
          },
          steps: [
            Step(
              title: Text('خطوة 1', style: TextStyles.font14primaryColorMedium),
              subtitle: Text('اضف تفاصيل الكتاب',
                  style: TextStyles.font12primaryColorRegualar),
              content: const AddBookDetails(),
              isActive: _currentStep == 0,
            ),
            Step(
              title: Text('خطوة 2', style: TextStyles.font14primaryColorMedium),
              subtitle: Text('اضف غلاف ',
                  style: TextStyles.font12primaryColorRegualar),
              content: const AddBookCover(),
              isActive: _currentStep == 1,
            ),
          ],
        ),
      ),
    );
  }
}
