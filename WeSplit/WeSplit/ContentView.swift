//
//  ContentView.swift
//  DemoSwiftUi
//
//  Created by Paolo Razon on 3/31/25.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount: Double = 0.0
    @State private var numberOfPeople: Int = 0 // Index
    @State private var tipPercentage: Int = 20
//    private var tipPercentages: [Int] = [10, 15, 20, 25, 30]
    private var tipPercentages: [Int] = Array(0...100)
    private var totalPerperson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection =  Double(tipPercentage) / 100
        let tipAmount = checkAmount * tipSelection
        let grandTotal = checkAmount + tipAmount
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }.pickerStyle(.menu)
                }
                
                Section("How much you want to tip?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) { tip in
                            Text(tip, format: .percent)
                        }
                    }.pickerStyle(.navigationLink)
                }
                
                Section("Amount per person") {
                    Text(totalPerperson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Total amount") {
                    let grandTotal = Double((numberOfPeople + 2)) * totalPerperson
                    Text(grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }.navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
