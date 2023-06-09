import 'package:donation/core/constants/app_strings.dart';

import '../../models/onboarding_model.dart';

class OnBoardingData {
  static List<OnBoardingModel> onBoardingItems = [
    OnBoardingModel(
      image: AppStrings.logoImage,
      title: 'تبرع بدمك من اجل انقاذ حياة',
      subTitle: 'يتيح اليك التطبيق التبرع للمستشفيات اللتى تحتاج الى الدم بشكل امن وسريع عن طريق تقديم طلب للمستشفى التى تعلن عن احتياجها للدم ويقوم موظف المستشفى بالرد على الطلب بالقبول او الرفض اذا استوفى المتقدم للتبرع بشروط الطلب',
    ),
    OnBoardingModel(
      image: AppStrings.onBoard1,
      title: 'كيف تساهم عمليات التبرع بالدم في حلّ مشكلة نقص مخزون الدم؟',
      subTitle: 'لا شك أن التبرع بكمية قليلة من الدم يمكن أن ينقذ حياة طفل مصاب بابيضاض الدم (لوكيميا)، أو إعادة العافية إلى مريض بالسرطان، أو نقل الدم إلى ضحية حادث في حاجة ماسة إليه.',
    ),
    OnBoardingModel(
      image: AppStrings.onBoard2,
      title: 'من يمكنه أن يتبرع بالدم؟',
      subTitle: 'يمكن لجميع الأشخاص التبرع بالدم في حال تمتعهم بصحة جيدة. وهناك بعض المتطلبات الأساسية التي لا بد من الوفاء بها للتبرع بالدم. يتراوح عمر المتبرع بين 18 و65 سنة. يبلغ وزن المتبرع 50 كيلوغراماً على الأقل. يجب على المتبرع التمتع بصحة جيدة عندما يتبرع بالدم',
    ),
    OnBoardingModel(
      image: AppStrings.onBoard3,
      title: 'كيف أستعدّ للتبرع بالدم؟',
      subTitle: 'قبل التبرع، تناول وجبة صحية واشرب كمية كبيرة من الماء. اذهب إلى مكان التبرع بعد الحصول على قسط وافر من الراحة وارتداء قميص له كميّن يسهل رفعهما أعلى المرفقين. أحضر معك بطاقة التبرع بالدم، أو رخصة القيادة أو أي وثيقتين أخريين لإثبات هويتك.',
    ),
  ];
}
