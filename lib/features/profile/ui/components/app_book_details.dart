import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/features/profile/ui/widgets/edit_book_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBookDetails extends StatelessWidget {
  const AddBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EditBookTextField(
            title: 'اسم الكتاب',
            hinttext: 'ادخل اسم الكتاب ',
            initVal: 'خاتم سليمى'),
        verticalSpace(30),
        const EditBookTextField(
            title: 'اسم الكاتب',
            hinttext: ' ادخل اسم الكاتب',
            initVal: 'إبراهيم عبد المجيد'),
        verticalSpace(30),
        const EditBookTextField(
            title: 'نبذه عن الكتاب',
            hinttext: ' ادخل نبذه عن الكتاب',
            initVal:
                'تدور الرواية حول خاتم غامض يمتلك قوى غير مألوفة، ورحلة البطلة سليمى لاستكشاف معاني الحياة والحب والحرية. تعكس الرواية أبعادًا فلسفية وروحية، حيث يستخدم الكاتب أسلوبه السردي المميز للتنقل بين الماضي والحاضر'),
        verticalSpace(44),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('عدد صفحات الكتاب', style: TextStyles.font16blackMedium),
            horizontalSpace(15),
            Container(
              height: 43.h,
              width: 90.w,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.primaryColor),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '55',
                      style: TextStyles.font16primaryColorRegualar,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorsManager.primaryColor),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.r))),
                          child: const Icon(
                            Icons.arrow_drop_up,
                            color: ColorsManager.primaryColor,
                            size: 18,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorsManager.primaryColor),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.r))),
                          child: const Icon(
                            Icons.arrow_drop_down,
                            color: ColorsManager.primaryColor,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        verticalSpace(44),
        const EditBookTextField(
          title: 'لغة الكتاب',
          hinttext: 'اغه الكتاب ',
          initVal: 'العربية',
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: ColorsManager.primaryColor,
            size: 35,
          ),
        ),
        verticalSpace(30),
        const EditBookTextField(
          title: 'تنصيف الكتاب',
          hinttext: 'ختر تصنيف الكتاب',
          initVal: 'تنمية ذاتية',
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: ColorsManager.primaryColor,
            size: 35,
          ),
        ),
        verticalSpace(80),
       
      ],
    );
  }
}
