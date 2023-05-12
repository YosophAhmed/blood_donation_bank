import '../../../models/hospital_model.dart';
import '../../../models/requests_model.dart';
import '../../../models/user_model.dart';

class RequestsData {
  static List<RequestsModel> requests = [
    RequestsModel(
      hospitalModel: HospitalModel(
        hospitalName: 'مستشفى شفا لأمراض مستشفى شفا لأمراض القلب',
        hospitalPhone: '01155566677',
        hospitalAddress:
            'شارع الامام محمد غالى متفرع من جسر السويس مصر الجديدة',
        bloodGroup: [
          'A',
          'B',
          'O',
          'B+',
        ],
        fromHour: 'التاسعة صباحا',
        toHour: 'الثالثة عصرا',
        postDateTime: DateTime.now().toString().substring(0, 16),
        postId: 'dsfdsfdsf',
        floorNumber: 5,
        roomNumber: 42,
      ),
      userModel: UserModel(
        name: 'يوسف أحمد محمد',
        bloodGroup: 'B+',
        birthDate: '29-7-1999',
        nationalId: '299785462136897',
        phone: '01145080548',
        location: 'ابراهيم عبد الرازق عين شمس القاهرة',
      ),
      userDescription: 'لا يوجد تفاصيل',
      requestStatus: 'قيد الانتظار',
      requestId: '123',
    ),
    RequestsModel(
      hospitalModel: HospitalModel(
        hospitalName: 'مستشفى شفا لأمراض مستشفى شفا لأمراض القلب',
        hospitalPhone: '01155566677',
        hospitalAddress:
            'شارع الامام محمد غالى متفرع من جسر السويس مصر الجديدة',
        bloodGroup: [
          'A',
          'B',
          'O',
          'B+',
        ],
        fromHour: 'التاسعة صباحا',
        toHour: 'الثالثة عصرا',
        postDateTime: DateTime.now().toString().substring(0, 16),
        postId: 'dsfdsfdsf',
        floorNumber: 5,
        roomNumber: 42,
      ),
      userModel: UserModel(
        name: 'يوسف أحمد محمد',
        bloodGroup: 'B+',
        birthDate: '29-7-1999',
        nationalId: '299785462136897',
        phone: '01145080548',
        location: 'ابراهيم عبد الرازق عين شمس القاهرة',
      ),
      userDescription: 'لا يوجد تفاصيل',
      requestStatus: 'قيد الانتظار',
      requestId: '123',
    ),
    RequestsModel(
      hospitalModel: HospitalModel(
        hospitalName: 'مستشفى شفا لأمراض مستشفى شفا لأمراض القلب',
        hospitalPhone: '01155566677',
        hospitalAddress:
            'شارع الامام محمد غالى متفرع من جسر السويس مصر الجديدة',
        bloodGroup: [
          'A',
          'B',
          'O',
          'B+',
        ],
        fromHour: 'التاسعة صباحا',
        toHour: 'الثالثة عصرا',
        postDateTime: DateTime.now().toString().substring(0, 16),
        postId: 'dsfdsfdsf',
        floorNumber: 5,
        roomNumber: 42,
      ),
      userModel: UserModel(
        name: 'يوسف أحمد محمد',
        bloodGroup: 'B+',
        birthDate: '29-7-1999',
        nationalId: '299785462136897',
        phone: '01145080548',
        location: 'ابراهيم عبد الرازق عين شمس القاهرة',
      ),
      userDescription: 'لا يوجد تفاصيل',
      requestStatus: 'قيد الانتظار',
      requestId: '123',
    ),
    RequestsModel(
      hospitalModel: HospitalModel(
        hospitalName: 'مستشفى شفا لأمراض مستشفى شفا لأمراض القلب',
        hospitalPhone: '01155566677',
        hospitalAddress:
            'شارع الامام محمد غالى متفرع من جسر السويس مصر الجديدة',
        bloodGroup: [
          'A',
          'B',
          'O',
          'B+',
        ],
        fromHour: 'التاسعة صباحا',
        toHour: 'الثالثة عصرا',
        postDateTime: DateTime.now().toString().substring(0, 16),
        postId: 'dsfdsfdsf',
        floorNumber: 5,
        roomNumber: 42,
      ),
      userModel: UserModel(
        name: 'يوسف أحمد محمد',
        bloodGroup: 'B+',
        birthDate: '29-7-1999',
        nationalId: '299785462136897',
        phone: '01145080548',
        location: 'ابراهيم عبد الرازق عين شمس القاهرة',
      ),
      userDescription: 'لا يوجد تفاصيل',
      requestStatus: 'قيد الانتظار',
      requestId: '123',
    ),
  ];
}
