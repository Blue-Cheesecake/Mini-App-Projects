import 'package:flutter/material.dart';
import 'package:flutter_client/features/jobs/application/job_service.dart';
import 'package:flutter_client/features/jobs/domain/job_model.dart';
import 'package:flutter_client/features/jobs/presentation/widgets/job_filter_widget.dart';
import 'package:flutter_client/features/jobs/presentation/widgets/job_item_widget.dart';
import 'package:provider/provider.dart';

class JobView extends StatefulWidget {
  const JobView({Key? key}) : super(key: key);

  @override
  State<JobView> createState() => _JobViewState();
}

class _JobViewState extends State<JobView> {
  bool _isFiltering = false;
  late final JobService _jobService;

  @override
  void initState() {
    super.initState();
    _jobService = Provider.of<JobService>(
      context,
      listen: false,
    );
  }

  void reverseIsFilteringState() {
    setState(() {
      _isFiltering = !_isFiltering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            _isFiltering ? const JobFilterWidget() : const SizedBox.shrink(),
            _isFiltering ? const SizedBox(height: 35) : const SizedBox.shrink(),
            FutureBuilder(
              future: _jobService.getJobs(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
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
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: JobItemWidget(jobModel: data[index]),
                      );
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
