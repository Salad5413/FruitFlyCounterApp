//
//  TablesListView.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//


import SwiftUI

struct TablesListView: View {
    @ObservedObject var tableList: TableList

    var body: some View {
        NavigationView {
            List {
                ForEach(tableList.tables.indices, id: \.self) { index in
                    NavigationLink(destination: TableContentView(table: tableList.tables[index])) {
                        Text(tableList.tables[index].name)
                    }
                }
            }
            .navigationTitle("Tables History")
        }
    }
}

class TableList: ObservableObject {
    @Published var tables: [Table]

    init(tables: [Table] = []) {
        self.tables = tables
    }
}

