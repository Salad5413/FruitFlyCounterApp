//
//  TablesView.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//

import SwiftUI


struct TablesView: View {
    @ObservedObject var vgseTable: Table
    @ObservedObject var vgebTable: Table

    var body: some View {
        VStack {
            Text("VGSE Table")
                .font(.title2)
                .padding()

            TableContentView(table: vgseTable)

            Text("VGEB Table")
                .font(.title2)
                .padding()

            TableContentView(table: vgebTable)
        }
    }
}



