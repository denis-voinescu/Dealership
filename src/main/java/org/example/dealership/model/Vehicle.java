package org.example.dealership.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "vehicle")
public class Vehicle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "vin", nullable = false, length = 17)
    private String vin;

    @Column(name = "type", nullable = false, length = 20)
    private String type;

    @Column(name = "make", nullable = false, length = 50)
    private String make;

    @Column(name = "model", nullable = false, length = 50)
    private String model;

    @Column(name = "year", nullable = false)
    private Integer year;

    @Column(name = "color", length = 30)
    private String color;

    @Column(name = "engine_type", nullable = false, length = 20)
    private String engineType;

    @Column(name = "engine_capacity")
    private Integer engineCapacity;

    @Column(name = "transmission", nullable = false, length = 20)
    private String transmission;

}