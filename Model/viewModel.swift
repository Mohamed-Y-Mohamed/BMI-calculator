//
//  viewModel.swift
//  BMI3
//
//  Created by Mohamed Mohamed on 12/10/2023.
//

import Foundation
class BMIViewModel: ObservableObject {
    @Published  var height: String = ""
    @Published  var weight: String = ""
    @Published  var bmiMessage: String = ""
    @Published var bmiRecord: [BMIRecord] = []
     

}
