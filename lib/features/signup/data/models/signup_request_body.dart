import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final String name;
  final String phone;
  final int gender;

  SignupRequestBody({
    required this.email,
    required this.gender,
    required this.password,
    required this.passwordConfirmation,
    required this.name,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
