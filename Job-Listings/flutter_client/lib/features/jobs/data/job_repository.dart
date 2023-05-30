import 'dart:convert';

import 'package:flutter_client/features/jobs/domain/job_model.dart';
import 'package:http/http.dart' as http;

class JobRepository {
  Future<List<JobModel>> fetchAllJobs() async {
    await Future.delayed(const Duration(seconds: 1));
    http.Response response =
        await http.get(Uri.parse("http://localhost:8080/api/v1/job/all"));
    List<dynamic> decoded = jsonDecode(response.body);
    return decoded.map((e) => JobModel.fromJson(e)).toList();
  }
}
