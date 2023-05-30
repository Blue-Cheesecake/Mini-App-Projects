import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class JobModel with _$JobModel {
  const factory JobModel({
    required final int id,
    required final String company,
    required final String logo,
    required final bool isNew,
    required final bool featured,
    required final String position,
    required final String role,
    required final String level,
    required final String postedAt,
    required final String contract,
    required final String location,
    required final List<String> languages,
    required final List<String> tools,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
}
