import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_client/features/jobs/application/job_service.dart';
import 'package:provider/provider.dart';

class JobView extends StatelessWidget {
  const JobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final JobService jobService = Provider.of<JobService>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            const Text("Hello World"),
            FutureBuilder(
              future: jobService.getJobs(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                log(snapshot.data.toString());

                return const Text("data");
              },
            )
          ],
        ),
      ),
    );
  }
}
