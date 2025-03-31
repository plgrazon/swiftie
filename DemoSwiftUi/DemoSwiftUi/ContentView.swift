//
//  ContentView.swift
//  WeSplit
//
//  Created by Paolo Razon on 3/31/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    @State private var students = [
        "Sofia Martinez",
        "Liam Johnson",
        "Aisha Patel",
        "Noah Williams",
        "Mei-Lin Zhang",
        "Ethan Campbell",
        "Zara Ahmed",
        "Jackson Davis",
        "Priya Sharma",
        "Oliver Thompson",
        "Fatima Al-Hassan",
        "Benjamin Lee",
        "Isabella Rodriguez",
        "Mohammed Khan",
        "Charlotte Wilson",
        "Hiroshi Tanaka",
        "Amara Okafor",
        "Gabriel Cohen",
        "Elena Petrov",
        "Marcus Anderson",
        "Leila Nguyen",
        "Caleb O'Connor",
        "Aria Gupta",
        "Santiago Morales",
        "Freya Johansson",
        "Jamal Washington",
        "Valentina Rossi",
        "Kai Nakamura",
        "Nora Ibrahim",
        "Mateo Fernandez"
    ]
    @State private var selectedStudent = ""
    
    // In this particular use case we can't use mutating
    // since in SwiftUI views are immutable on state change everything
    // is recreated (Will use the shorthand method)
    func increment() -> Void {
        self.tapCount += 1
    }
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Enter your name", text: $name)
                Text("Hello \(name.isEmpty ? "World" : name)!")
                Picker("Select your student:", selection: $selectedStudent) {
                    ForEach(students, id: \.self) { student in
                        Text(student)
                    }
                }
            }
            Button("Tap Count: \(tapCount)") {
                self.tapCount += 1
            }
        }
    }
}

#Preview {
    ContentView()
}
