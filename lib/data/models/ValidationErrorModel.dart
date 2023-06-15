class ValidationErrorModel {
  late List<Errors> errors;

  ValidationErrorModel({
    required this.errors,
  });

  ValidationErrorModel.fromJson(Map<String, dynamic> json) {
    if (json['errors'] != null) {
      errors = [];
      json['errors'].forEach((v) {
        errors.add(Errors.fromJson(v));
      });
    }
  }
}

class Errors {
  late String msg;

  Errors({
    required this.msg,
  });

  Errors.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }
}
