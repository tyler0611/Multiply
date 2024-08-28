//
//  ContentView.swift
//  Multiply
//
//  Created by Tyler Berlin on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply")
            TextField("Enter a Number", text: $firstNumberTextField)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Text("X")
            TextField("Enter a Number", text: $secondNumberTextField)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Button("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondNumber = Int(secondNumberTextField) {
                        calculation = firstNumber * secondNumber
                        if calculation == 64 {
                            imageName = "woody"
                        }
                        else if calculation % 2 != 0{
                            imageName = "jessie"
                        }
                        else {
                            imageName = "buzz"
                        }
                    }
                }
            }
                Text("\(calculation)")
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 30)
                    .font(.body)
                    .padding()
                Image(imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
            }
    }
}
        #Preview {
                ContentView()
        }
