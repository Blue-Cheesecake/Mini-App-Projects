package com.sinut.springserver.utils;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Component
@RequiredArgsConstructor
public class JsonUtil {

    private final ObjectMapper objectMapper;

    public <T> List<T> readListFromJsonFile(String fileName, TypeReference<List<T>> type) throws IOException {
        InputStream is = new ClassPathResource(fileName).getInputStream();
        return objectMapper.readValue(is, type);
    }

}
