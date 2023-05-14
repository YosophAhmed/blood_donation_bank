class AppStrings {
  static const String logoImage = 'assets/images/Logo.png';

  static const String onBoard1 = 'assets/images/onBoard 1.png';

  static const String onBoard2 = 'assets/images/onBoard 2.png';

  static const String onBoard3 = 'assets/images/onBoard 3.png';

  static const String profileImage = 'assets/images/profile.png';

  static const String fontFamily = 'Montserrat';

  static const String aow = '  أو  ';

  static const String signIn = 'تسجيل الدخول';

  static const String signInText = ':قم بادخال البريد الأكترونى';

  static const String signUp = 'انشاء حساب جديد';

  static const String signUpText = ':قم بادخال كلمة السر';

  static const String requiredValidation = 'هذا الحقل مطلوب';

  static const String emailHint = 'example@email.com';

  static const String passwordHint = 'Qwe231*dds&we';

  static const String hasNoEmail = 'ليس لديك حساب؟';

  static const String hasEmail = 'لديك حساب؟';

  static const String enterTheseFields = ':قم بادخال البيانات الاّتية';

  static const String name = ':الاسم';

  static const String nameHint = 'الاسم ثلاثى';

  static const String birthday = ':تاريخ الميلاد';

  static const String birthdayHint = 'اختر تاريخ الميلاد';

  static const String birthdayExample = '1900-00-00';

  static const String nationalId = ':الرقم القومى';

  static const String nationalIdHint = '00000000000000';

  static const String location = ':الموقع';

  static const String locationHint = 'اختر المحافظة';

  static const String locationExample = 'تحديد الموقع';

  static const String bloodGroup = ':فصيلة الدم';

  static const String bloodGroupHint = 'اختر فصيلة الدم';

  static const String phone = ':رقم الهاتف';

  static const String phoneHint = '01000000000';

  static const String email = ':البريد الأكترونى';

  static const String password = ':كلمة السر';

  static const String hospitals = 'المستشفيات';

  static const String profile = 'حسابى';

  static const String requests = 'تبرعاتى';

  static const String more = 'المزيد';

  static const String noRequests = 'ليس لديك تبرعات سابقة';

  static const String signOut = 'تسجيل الخروج';

  static const String aboutApp = 'عن التطبيق';

  static const String enterHospitalName = 'قم بادخال اسم المستشفى';

  static const String refresh = 'تحديث';

  static const String requestDetails = 'تفاصيل التبرع';

  static const String roomNumber = 'غرفة رقم';

  static const String floorNumber = 'طابق رقم';

  static const String hospitalAddress = ':عنوان المستشفى';

  static const String hospitalName = ':اسم المستشفى';

  static const String donationTime = ':وقت التبرع';

  static const String fromHour = 'من الساعة';

  static const String toHour = 'الى الساعة';

  static const String hospitalPhone = ':رقم التليفون';

  static const String requiredBloodGroup = ':مجموعة الدم المطلوبة';

  static const String addRequestDescription = ':أضف تفاصيل للطلب';

  static const String makeRequest = 'تقديم طلب للتبرع';

  static const List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
    'لا أعلم',
  ];

  static const String getAllHospitalsUrl =
      'https://project-blood.onrender.com/api/v1/hospital';

  static const String signUpUrl =
      'https://project-blood.onrender.com/api/v1/auth/signup';

  static const String loginUrl =
      'https://project-blood.onrender.com/api/v1/auth/login';

  static const String getUserDataUrl =
      'https://project-blood.onrender.com/api/v1/user/myProfile';

  static const String getAllRequestsUrl =
      'https://project-blood.onrender.com/api/v1/requests/allResults';

  static const String makeRequestUrl =
      'https://project-blood.onrender.com/api/v1/requests/';
}
