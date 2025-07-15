// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialityResponseModel _$SpecialityResponseModelFromJson(
  Map<String, dynamic> json,
) => SpecialityResponseModel(
  specialityDataList:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) =>
                e == null
                    ? null
                    : SpecialityData.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$SpecialityResponseModelToJson(
  SpecialityResponseModel instance,
) => <String, dynamic>{'data': instance.specialityDataList};

SpecialityData _$SpecialityDataFromJson(Map<String, dynamic> json) =>
    SpecialityData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList:
          (json['doctors'] as List<dynamic>?)
              ?.map(
                (e) =>
                    e == null
                        ? null
                        : Doctors.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$SpecialityDataToJson(SpecialityData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  photo: json['photo'] as String?,
  degree: json['degree'] as String?,
  gender: json['gender'] as String?,
  price: (json['appoint_price'] as num?)?.toInt(),
);

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'photo': instance.photo,
  'gender': instance.gender,
  'degree': instance.degree,
  'appoint_price': instance.price,
};
