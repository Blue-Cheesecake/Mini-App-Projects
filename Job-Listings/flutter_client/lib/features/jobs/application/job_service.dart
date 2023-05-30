import 'package:flutter_client/features/jobs/data/job_repository.dart';
import 'package:flutter_client/features/jobs/domain/job_model.dart';

class JobService {
  JobService({
    required JobRepository jobRepository,
  }) : _jobRepository = jobRepository;

  final JobRepository _jobRepository;

  Future<List<JobModel>> getJobs() async {
    return await _jobRepository.fetchAllJobs();
  }
}
