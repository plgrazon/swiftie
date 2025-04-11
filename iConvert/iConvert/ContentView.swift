//
//  ContentView.swift
//  iConvert
//
//  Created by Paolo Razon on 4/9/25.
//

//    Which units you choose are down to you, but you could choose one of these:
//
//    Temperature conversion: users choose Celsius, Fahrenheit, or Kelvin.
//    Length conversion: users choose meters, kilometers, feet, yards, or miles.
//    Time conversion: users choose seconds, minutes, hours, or days.
//    Volume conversion: users choose milliliters, liters, cups, pints, or gallons.
//    If you were going for length conversion you might have:
//
//    A segmented control for meters, kilometers, feet, yard, or miles, for the input unit.
//    A second segmented control for meters, kilometers, feet, yard, or miles, for the output unit.
//    A text field where users enter a number.
//    A text view showing the result of the conversion.

import SwiftUI

let tempUnits = ["Celsius", "Fahrenheit", "Kelvin"]

struct ContentView: View {
    @State private var inputValue: Double = 0
    @State private var outputValue: Double = 0
    @State private var selectedMainUnit = "Temperature"
    @State private var selectedSubUnitInput = "Celsius"
//    @State private var i = (tempUnits.firstIndex(of: selectedSubUnitInput) ?? <#default value#>) % tempUnits.count
    @State private var selectedSubUnitOutput = "Celsius"
    
    private var measurementUnits = ["Temperature", "Length", "Time", "Volume"]

    var body: some View {
        NavigationStack {
            Form  {
                Section("Select Unit") {
                    Picker("Measurment", selection: $selectedMainUnit) {
                        ForEach(measurementUnits, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu)
                }
                
                Section("Input Value") {
                    TextField("Input", value: $inputValue, format: .number)
                    Picker("Unit", selection: $selectedSubUnitInput) {
                        ForEach(tempUnits, id: \.self) { unit in
                            Text(unit)
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section("Output Value") {
                    TextField("Output", value: $outputValue, format: .number)
                    Picker("Unit", selection: $selectedSubUnitOutput) {
                        ForEach(tempUnits, id: \.self) { unit in
                            Text(unit)
                        }
                    }.pickerStyle(.segmented)
                }

            }
            .navigationTitle("iConvert")
        }
    }
}

#Preview {
    ContentView()
}
