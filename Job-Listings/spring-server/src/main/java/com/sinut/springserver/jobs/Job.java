package com.sinut.springserver.jobs;

import lombok.Data;

import java.util.List;

@Data
public class Job {
    private Integer id;
    private String company;
    private String logo;
    private Boolean isNew;
    private Boolean featured;
    private String position;
    private String role;
    private String level;
    private String postedAt;
    private String contract;
    private String location;
    private List<String> languages;
    private List<String> tools;
}