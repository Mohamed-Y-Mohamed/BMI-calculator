//
//  BMIRecord.swift
//  BMI3
//
//  Created by Mohamed Mohamed on 12/10/2023.
//


import Foundation
struct BMIRecord:Identifiable{
    var id = UUID()
    var date:Date
    var bmiValue: Double = 0
    var changePercentage:Double? = nil

}
