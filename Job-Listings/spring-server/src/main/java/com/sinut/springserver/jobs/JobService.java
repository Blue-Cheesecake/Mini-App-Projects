package com.sinut.springserver.jobs;

import com.fasterxml.jackson.core.type.TypeReference;
import com.sinut.springserver.utils.JsonUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class JobService {

    private final JsonUtil jsonUtil;

    public List<Job> fetchAllJobs() {
        try {
            return jsonUtil.readListFromJsonFile("data.json", new TypeReference<>() {
            });
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

}
