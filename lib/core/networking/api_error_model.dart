import 'package:comeback/core/helpers/extension.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final int? code;
  final String? message;
  @JsonKey(name: 'data')
  final dynamic errors;

  ApiErrorModel({this.errors, this.code, this.message});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  // Returns a concatenated string of all error messages or a default message
  String getAllErrorsMessage() {
    if (errors is Map<String, dynamic>) {
      // The Case when errors is a Map<String, dynamic>
      // if there is no errors, return the message or a default message
      if ((errors as Map<String, dynamic>).isNullOrEmpty) {
        return message ?? 'An unknown error occurred';
      }

      // if there are errors messages, concatenate them into a single string
      String errorMessages = (errors as Map<String, dynamic>).entries
          .map((element) {
            final value = element.value;
            return '${value.join(',')}';
          })
          .join('\n');
      return errorMessages;
    } else {
      // The Case when errors is a List<dynamic>
      if (errors is List<dynamic>) {
        return message ?? 'An unknown error occurred';
        // if ((errors as List<dynamic>).isNullOrEmpty) {
        //   return message ?? 'An unknown error occurred';
        // }

        // String errorMessages = (errors as List<dynamic>)
        //     .map((e) => e.toString())
        //     .join('\n');
        // return errorMessages;
      }
    }
    // If errors is neither a Map nor a List, return the message or a default message
    return message ?? 'An unknown error occurred';
  }
}
