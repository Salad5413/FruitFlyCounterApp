//
//  ContentView.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vgseTable = Table(name: "VGSE Table")
    @StateObject private var vgebTable = Table(name: "VGEB Table")

    var body: some View {
        MainView(vgseTable: vgseTable, vgebTable: vgebTable)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
import SwiftUI

struct ContentView: View {
    @StateObject private var vgseTable = Table(name: "VGSE Table")
    @StateObject private var vgebTable = Table(name: "VGE+B Table")

    var body: some View {
        MainView(vgseTable: vgseTable, vgebTable: vgebTable)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
