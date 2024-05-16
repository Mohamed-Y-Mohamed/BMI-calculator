

import SwiftUI
struct ContentView: View {
    @ObservedObject var viewModel = BMIViewModel()
    @State private var showAlert: Bool = false
    
    
    var body: some View {
        
        ZStack{
            VStack {
                Text("BMI Calculator Ver 1")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                
                
                HStack {
                    Text("Height (m):")
                    TextField("Enter Height", text: $viewModel.height)
                        .padding()
                }
                
                // Weight input field
                HStack {
                    Text("Weight (KG):")
                    TextField("Enter Weight", text: $viewModel.weight)
                        .padding()
                }
                
                
                Button(action: calculateBMI) {
                    Text("Calculate BMI")
                        .foregroundColor(Color.black)
                }
                .padding()
                
                
                //Text("BMI: \(String(format: "%.2f", bmiValue))")
                Spacer()
                //Text("Result: \(BMIViewModel.bmiMessage)")
            }
            .padding()
            
            
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Invalid Input"),
                    message: Text("Please enter valid numeric values for height and weight."),
                    dismissButton: .default(Text("OK"))
                )
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            
        }
    }
    
    func calculateBMI() {
        guard let heightValue = Double(viewModel.height), let weightValue = Double(viewModel.weight), heightValue > 0, weightValue > 0 else {
            // Show the alert when input is invalid
            showAlert = true
            return
        }
        
        //        let bmi = weightValue / (heightValue * heightValue)
        //        bmiValue = bmi
        //        if bmi < 24.9 && bmi > 18.5 {
        //            viewModel.bmiMessage = "Normal weight"
        //        } else if bmi < 29.9 && bmi > 24.9 {
        //            viewModel.bmiMessage = "Overweight"
        //        } else if bmi < 18.5 {
        //            viewModel.bmiMessage = "Underweight"
        //        } else if bmi >= 29.9 {
        //            viewModel.bmiMessage = "Obese"
        //        }
    }
    
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

