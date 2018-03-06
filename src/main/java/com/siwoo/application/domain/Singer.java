package com.siwoo.application.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.castor.core.util.Assert;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Entity @ToString(exclude = "photo") @Getter @Setter
public class Singer implements Serializable{

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Version
    private int version;

    @NotBlank(message = "{validation.firstname.NotBlank.message}")
    @Size(min = 3,max=60,message = "{validation.firstName.Size.message}")
    private String firstName;

    @NotBlank(message = "{validation.lastname.NotBlank.message}")
    @Size(min = 3,max=60,message = "{validation.lastName.Size.message}")
    private String lastName;

    private LocalDate birthDate;

    private String description;

    @Basic(fetch = FetchType.LAZY) // This is how to set fetch lazy for basic property in entity
    @Lob
    private byte[] photo;

    @Transient
    private static DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    @Transient
    private String getBirthDateString(){
        return birthDate != null ? birthDate.format(dateTimeFormatter) : "";
    }

    public static String getBirthDateString(Singer singer){
        Assert.notNull(singer,"singer must not empty");
        return singer.getBirthDateString();
    }

}
