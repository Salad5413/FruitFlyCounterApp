//
//  MainView.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var vgseTable: Table
    @ObservedObject var vgebTable: Table
    @State private var showTablesView = false

    var body: some View {
        VStack {

            Button(action: {
                showTablesView.toggle()
            }) {
                Text("View Tables")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showTablesView) {
                TablesListView(tableList: TableList(tables: [vgseTable, vgebTable]))
            }
            Spacer()
            InputView(vgseTable: vgseTable, vgebTable: vgebTable)
        }
    }
}


/*
import SwiftUI

struct MainView: View {
    @ObservedObject var vgseTable: Table
    @ObservedObject var vgebTable: Table
    @State private var showTablesView = false

    var body: some View {
        VStack {

            Button(action: {
                showTablesView.toggle()
            }) {
                Text("View Tables")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showTablesView) {
                TablesListView(tableList: TableList(tables: [vgseTable, vgebTable]))
            }
            Spacer()
            InputView(vgseTable: vgseTable, vgebTable: vgebTable)
        }
        .onAppear {
            vgseTable.initRows(rowTitles: ["+;+", "+;SE", "VG;+", "VG;SE"])
            vgebTable.initRows(rowTitles: ["+;+", "+;EB", "VG;+", "VG;EB"])
        }
    }
}
*/
