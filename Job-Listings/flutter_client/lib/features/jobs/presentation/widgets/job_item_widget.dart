import 'package:flutter/material.dart';
import 'package:flutter_client/features/jobs/domain/job_model.dart';

class JobItemWidget extends StatelessWidget {
  const JobItemWidget({Key? key, required this.jobModel}) : super(key: key);

  final JobModel jobModel;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      child: Placeholder(),
    );
  }
}
