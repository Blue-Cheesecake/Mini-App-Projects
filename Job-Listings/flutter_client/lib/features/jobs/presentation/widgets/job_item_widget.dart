import 'package:flutter/material.dart';
import 'package:flutter_client/features/jobs/domain/job_model.dart';

class JobItemWidget extends StatelessWidget {
  const JobItemWidget({Key? key, required this.jobModel}) : super(key: key);

  final JobModel jobModel;

  @override
  Widget build(BuildContext context) {
    const double rad = 29;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: rad),
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: const Placeholder(),
        ),
        Container(
          margin: const EdgeInsets.only(left: 25),
          child: const CircleAvatar(
            radius: rad,
          ),
        ),
      ],
    );
  }
}
