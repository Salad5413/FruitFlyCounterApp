//
//  InputView.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//

import Foundation
import SwiftUI

struct InputView: View {
    @ObservedObject var vgseTable: Table
    @ObservedObject var vgebTable: Table
    @State private var showTablesView = false
    
    @State private var gender: String = "male"
    @State private var eyeColor: String = "red"
    @State private var bodyColor: String = "caramel"
    @State private var wingType: String = "normal"

    var body: some View {
        VStack(spacing: 20) {

            Picker("Gender", selection: $gender) {
                Text("Male").tag("male")
                Text("Female").tag("female")
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("Eye Color", selection: $eyeColor) {
                Text("Red").tag("red")
                Text("Sepia").tag("sepia")
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("Body Color", selection: $bodyColor) {
                Text("Caramel").tag("caramel")
                Text("Ebony").tag("ebony")
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("Wing Type", selection: $wingType) {
                Text("Normal").tag("normal")
                Text("Vestigial").tag("vestigial")
            }.pickerStyle(SegmentedPickerStyle())
            
            Button(action: {
                vgseTable.record(gender: gender, eyeColor: eyeColor, wingType: wingType)
                vgebTable.record(gender: gender, bodyColor: bodyColor, wingType: wingType)
                showTablesView = true
            }) {
                Text("Record")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .sheet(isPresented: $showTablesView) {
            TablesView(vgseTable: vgseTable, vgebTable: vgebTable)
        }
    }
}


/*
import Foundation
import SwiftUI

struct InputView: View {
    @ObservedObject var vgseTable: Table
    @ObservedObject var vgebTable: Table
    @State private var showTablesView = false
    
    @State private var gender: String = "male"
    @State private var eyeColor: String = "red"
    @State private var bodyColor: String = "caramel"
    @State private var wingType: String = "normal"

    var body: some View {
        VStack(spacing: 20) {

            Picker("Gender", selection: $gender) {
                Text("Male").tag("male")
                Text("Female").tag("female")
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("Eye Color", selection: $eyeColor) {
                Text("Red").tag("red")
                Text("Sepia").tag("sepia")
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("Body Color", selection: $bodyColor) {
                Text("Caramel").tag("caramel")
                Text("Ebony").tag("ebony")
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("Wing Type", selection: $wingType) {
                Text("Normal").tag("normal")
                Text("Vestigial").tag("vestigial")
            }.pickerStyle(SegmentedPickerStyle())
            
            Button(action: {
                vgseTable.record(gender: gender, eyeColor: eyeColor, wingType: wingType)
                vgebTable.record(gender: gender, bodyColor: bodyColor, wingType: wingType)
                showTablesView = true
            }) {
                Text("Record")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .sheet(isPresented: $showTablesView) {
            TablesView(vgseTable: vgseTable, vgebTable: vgebTable)
        }
    }
}
*/
