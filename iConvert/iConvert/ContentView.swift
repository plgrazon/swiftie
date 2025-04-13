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

struct ContentView: View {
    @State private var inputValue: Double = 0
    @State private var selectedMainUnit = "Temperature"
    @State private var selectedSubUnitInput = "Celsius"
    @State private var selectedSubUnitOutput = "Fahrenheit"

    private var measurementUnits = ["Temperature", "Length", "Time", "Volume"]
    private var tempUnits = ["Celsius", "Fahrenheit", "Kelvin"]
    private let lengthUnits = [
        "Meters", "Kilometers", "Feet", "Yards", "Miles",
    ]
    private let timeUnits = ["Seconds", "Minutes", "Hours", "Days"]
    private let volumeUnits = [
        "Milliliters", "Liters", "Cups", "Pints", "Gallons",
    ]

    private var currentUnits: [String] {
        switch selectedMainUnit {
        case "Temperature":
            return tempUnits
        case "Length":
            return lengthUnits
        case "Time":
            return timeUnits
        case "Volume":
            return volumeUnits
        default:
            return []
        }
    }

    private var outputValue: Double {
        return convert(
            inputValue, from: selectedSubUnitInput, to: selectedSubUnitOutput)
    }

    private func convert(
        _ value: Double, from inputUnit: String, to outputUnit: String
    ) -> Double {
        if selectedMainUnit == "Temperature" {
            switch (inputUnit, outputUnit) {
            case ("Celsius", "Fahrenheit"):
                return value * 9 / 5 + 32
            case ("Celsius", "Kelvin"):
                return value + 273.15
            case ("Fahrenheit", "Celsius"):
                return (value - 32) * 5 / 9
            case ("Fahrenheit", "Kelvin"):
                return (value - 32) * 5 / 9 + 273.15
            case ("Kelvin", "Celsius"):
                return value - 273.15
            case ("Kelvin", "Fahrenheit"):
                return (value - 273.15) * 9 / 5 + 32
            default:
                return value
            }
        } else if selectedMainUnit == "Length" {
            let conversionTable: [String: [String: Double]] = [
                "Meters": [
                    "Kilometers": 0.001,
                    "Feet": 3.28084,
                    "Yards": 1.09361,
                    "Miles": 0.000621371,
                ],
                "Kilometers": [
                    "Meters": 1000,
                    "Feet": 3280.84,
                    "Yards": 1093.61,
                    "Miles": 0.621371,
                ],
                "Feet": [
                    "Meters": 0.3048,
                    "Kilometers": 0.0003048,
                    "Yards": 0.333333,
                    "Miles": 0.000189394,
                ],
                "Yards": [
                    "Meters": 0.9144,
                    "Kilometers": 0.0009144,
                    "Feet": 3,
                    "Miles": 0.000568182,
                ],
                "Miles": [
                    "Meters": 1609.34,
                    "Kilometers": 1.60934,
                    "Feet": 5280,
                    "Yards": 1760,
                ],
            ]
            if let unitConversion = conversionTable[inputUnit],
                let factor = unitConversion[outputUnit]
            {
                return value * factor
            }
            return value
        } else if selectedMainUnit == "Time" {
            let conversionTable: [String: [String: Double]] = [
                "Seconds": [
                    "Minutes": 1 / 60.0,
                    "Hours": 1 / 3600.0,
                    "Days": 1 / 86400.0,
                ],
                "Minutes": [
                    "Seconds": 60.0,
                    "Hours": 1 / 60.0,
                    "Days": 1 / 1440.0,
                ],
                "Hours": [
                    "Seconds": 3600.0,
                    "Minutes": 60.0,
                    "Days": 1 / 24.0,
                ],
                "Days": [
                    "Seconds": 86400.0,
                    "Minutes": 1440.0,
                    "Hours": 24.0,
                ],
            ]

            if let unitConversions = conversionTable[inputUnit],
                let factor = unitConversions[outputUnit]
            {
                return value * factor
            }
            return value
        } else if selectedMainUnit == "Volume" {
            let conversionTable: [String: [String: Double]] = [
                "Milliliters": [
                    "Liters": 0.001,
                    "Cups": 0.00422675,
                    "Pints": 0.00211338,
                    "Gallons": 0.000264172,
                ],
                "Liters": [
                    "Milliliters": 1000.0,
                    "Cups": 4.22675,
                    "Pints": 2.11338,
                    "Gallons": 0.264172,
                ],
                "Cups": [
                    "Milliliters": 236.588,
                    "Liters": 0.236588,
                    "Pints": 0.5,
                    "Gallons": 0.0625,
                ],
                "Pints": [
                    "Milliliters": 473.176,
                    "Liters": 0.473176,
                    "Cups": 2.0,
                    "Gallons": 0.125,
                ],
                "Gallons": [
                    "Milliliters": 3785.41,
                    "Liters": 3.78541,
                    "Cups": 16.0,
                    "Pints": 8.0,
                ],
            ]

            if let unitConversions = conversionTable[inputUnit],
                let factor = unitConversions[outputUnit]
            {
                return value * factor
            }
            return value
        } else {
            return value
        }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Select Unit") {
                    Picker("Measurement", selection: $selectedMainUnit) {
                        ForEach(measurementUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                    .onChange(of: selectedMainUnit) {
                        selectedSubUnitInput = currentUnits[0]
                        selectedSubUnitOutput = currentUnits[1]
                    }

                }

                Section("Input Value") {
                    TextField("Input", value: $inputValue, format: .number)
                    Picker("Unit", selection: $selectedSubUnitInput) {
                        ForEach(currentUnits, id: \.self) { unit in
                            Text(unit)
                        }
                    }
                    .pickerStyle(.segmented)
                    .onChange(of: selectedSubUnitInput) {
                        let currIndex =
                            currentUnits.firstIndex(of: selectedSubUnitInput)
                            ?? 0
                        let offsetIndex = (currIndex + 1) % currentUnits.count
                        selectedSubUnitOutput = currentUnits[offsetIndex]
                    }
                }

                Section("Output Value") {
                    Text(outputValue, format: .number)
                    Picker("Unit", selection: $selectedSubUnitOutput) {
                        ForEach(currentUnits, id: \.self) { unit in
                            Text(unit)
                        }
                    }
                    .pickerStyle(.segmented)
                    .onChange(of: selectedSubUnitOutput) {
                        if selectedSubUnitOutput == selectedSubUnitInput {
                            let currIndex =
                                currentUnits.firstIndex(
                                    of: selectedSubUnitOutput) ?? 0
                            let offsetIndex =
                                (currIndex + 1) % currentUnits.count
                            selectedSubUnitOutput = currentUnits[offsetIndex]
                        }
                    }
                }

            }
            .navigationTitle("iConvert")
        }
    }
}

#Preview {
    ContentView()
}
