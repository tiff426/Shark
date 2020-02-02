//
//  ContentView.swift
//  BabySharkButOutLoudiOS
//
//  Created by Tiffany Liu on 2/1/20.
//  Copyright © 2020 Tiffany Liu. All rights reserved.
import SwiftUI
import AVFoundation
struct ContentView: View {
    let genders = ["Male", "Female"]
    @State private var selectedGender = 0

    var body: some View {
        NavigationView {
        VStack {
            Picker("Select a gender", selection: $selectedGender) {
                ForEach(0 ..< genders.count) {
                    Text(self.genders[$0])
                }
            }
            Text("You chose: Gender # \(genders[selectedGender])")
            NavigationLink(destination: PageTwoForReal())
            {
                Text("Next")
            }
            }
        }
    }
}

