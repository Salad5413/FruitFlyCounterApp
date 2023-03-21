//
//  TableContentView.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//

import SwiftUI

struct TableContentView: View {
    @ObservedObject var table: Table

    var body: some View {
        VStack {
            Text("Table: \(table.name)")
                .font(.title)
                .padding()

            HStack {
                Text("Category")
                    .bold()
                    .frame(width: 100, alignment: .leading)
                Spacer()
                Text("Male")
                    .bold()
                    .frame(width: 60, alignment: .center)
                Spacer()
                Text("Female")
                    .bold()
                    .frame(width: 60, alignment: .center)
                Spacer()
                Text("Total")
                    .bold()
                    .frame(width: 60, alignment: .center)
            }
            .padding(.horizontal)

            ForEach(table.rows) { row in
                HStack {
                    Text(row.key)
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("\(row.males)")
                        .frame(width: 60, alignment: .center)
                    Spacer()
                    Text("\(row.females)")
                        .frame(width: 60, alignment: .center)
                    Spacer()
                    Text("\(row.total)")
                        .frame(width: 60, alignment: .center)
                }
                .padding(.horizontal)
            }
        }
    }
}


/*
import SwiftUI


struct TableContentView: View {
    @ObservedObject var table: Table

    var body: some View {
        VStack {
            Text("Table: \(table.name)")
                .font(.title)
                .padding()

            HStack {
                Text("Category")
                    .bold()
                Spacer()
                Text("Males")
                    .bold()
                Spacer()
                Text("Females")
                    .bold()
                Spacer()
                Text("Total")
                    .bold()
            }
            .padding(.horizontal)

            ForEach(table.rows) { row in
                HStack {
                    Text(row.key)
                    Spacer()
                    Text("\(row.males)")
                    Spacer()
                    Text("\(row.females)")
                    Spacer()
                    Text("\(row.total)")
                }
                .padding(.horizontal)
            }
        }
    }
}
*/
