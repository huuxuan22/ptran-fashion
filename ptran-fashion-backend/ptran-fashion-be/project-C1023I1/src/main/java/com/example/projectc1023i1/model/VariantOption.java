package com.example.projectc1023i1.model;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VariantOption {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "variant_option_id")
    private  Integer variantOptionId;

    private String value;

    @ManyToOne
    @JoinColumn(name = "variant_id")
    private Variant variant;

}
