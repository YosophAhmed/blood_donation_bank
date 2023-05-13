import 'dart:convert';

import 'package:donation/presentation/manger/auth_manger/register_manger/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

import '../../../../../../core/constants/app_strings.dart';
import '../../../../data/models/user_model.dart';

import 'package:http/http.dart' as http;

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(InitialRegisterState());

  String birthdayHint = AppStrings.birthdayExample;
  String regionHint = AppStrings.locationExample;
  String bloodGroupHint = AppStrings.bloodGroups.toString();

  void changeBirthdayHint({
    required String value,
  }) {
    birthdayHint = value;
    emit(ChangeBirthdayHintState());
  }

  void changeRegionHint({
    required String value,
  }) {
    regionHint = value;
    emit(ChangeRegionHintState());
  }

  void changeBloodGroupHint({
    required String value,
  }) {
    bloodGroupHint = value;
    emit(ChangeBloodGroupHintState());
  }

  UserModel userModel = UserModel(
    birthDate: AppStrings.birthdayExample,
    bloodGroup: AppStrings.bloodGroups.last,
    location: AppStrings.locationExample,
  );

  Future<void> getUserPosition() async {
    emit(LoadingRegisterState());

    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      emit(
        ErrorRegisterState(
          errorMessage: 'يرجى تشغيل الموقع',
        ),
      );
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        emit(
          ErrorRegisterState(
            errorMessage: 'لا توجد صلاحية للوصول الى الموقع, حاول مرة اخرى',
          ),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      emit(
        ErrorRegisterState(
          errorMessage: 'لا توجد صلاحية للوصول الى الموقع',
        ),
      );
      return;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    Position position = await Geolocator.getCurrentPosition();

    List<Placemark> placeMarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    userModel.location =
        '${placeMarks[0].subAdministrativeArea} ${placeMarks[0].administrativeArea} ${placeMarks[0].country}';

    changeRegionHint(
      value: userModel.location,
    );
  }

  void signUp() async {
    emit(LoadingRegisterState());
    try {
      var data = {
        'name': userModel.name,
        'email': userModel.email,
        'password': userModel.password,
        'phone': userModel.phone,
        'nationalID': userModel.nationalId,
        'birthDate': userModel.birthDate,
        'bloodType': userModel.bloodGroup,
        'location': userModel.location,
      };
      print(json.encode(data));
      var url = AppStrings.signUpUrl;
      var response = await http.post(
        Uri.parse(
          url,
        ),
        body: json.encode(data),
      );
      var responseBody = jsonDecode(response.body);
      print(responseBody);
    } catch (error) {
      emit(
        ErrorRegisterState(
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
