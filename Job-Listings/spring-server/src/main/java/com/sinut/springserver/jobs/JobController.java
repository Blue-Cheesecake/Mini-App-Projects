package com.sinut.springserver.jobs;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/v1/job")
@RequiredArgsConstructor
public class JobController {

    private final JobService jobService;

    @GetMapping("/all")
    public ResponseEntity<List<Job>> getJobs() {
        return ResponseEntity.ok(jobService.fetchAllJobs());
    }
}
