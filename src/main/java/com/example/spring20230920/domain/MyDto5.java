package com.example.spring20230920.domain;

import lombok.*;

@ToString
@EqualsAndHashCode
@AllArgsConstructor //allows all fields to be set by parameter
@NoArgsConstructor
@RequiredArgsConstructor //allows final fields to be initialized in Constructor
public class MyDto5 {
    private String name;
    private Integer age;
}
