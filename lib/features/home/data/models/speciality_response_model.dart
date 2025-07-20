import 'package:json_annotation/json_annotation.dart';
part 'speciality_response_model.g.dart';

@JsonSerializable()
class SpecialityResponseModel {
  @JsonKey(name: 'data')
  List<SpecialityData?>? specialityDataList;

  SpecialityResponseModel({this.specialityDataList});

  factory SpecialityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialityResponseModelFromJson(json);
}
@JsonSerializable()
class SpecialityData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;

  SpecialityData({this.id, this.name, this.doctorsList});

  factory SpecialityData.fromJson(Map<String, dynamic> json) =>
      _$SpecialityDataFromJson(json);
}
@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int? price;
  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.degree,
    this.gender,
    this.price,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
