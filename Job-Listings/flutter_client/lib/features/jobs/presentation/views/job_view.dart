import 'package:flutter/material.dart';
import 'package:flutter_client/features/jobs/application/job_service.dart';
import 'package:flutter_client/features/jobs/domain/job_model.dart';
import 'package:flutter_client/features/jobs/presentation/widgets/job_filter_widget.dart';
import 'package:flutter_client/features/jobs/presentation/widgets/job_item_widget.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            const JobFilterWidget(),
            const SizedBox(height: 35),
            FutureBuilder(
              future: jobService.getJobs(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                List<JobModel>? data = snapshot.data;

                if (data == null) {
                  return const Center(
                    child: Text("Null data"),
                  );
                }

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return JobItemWidget(jobModel: data[index]);
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
