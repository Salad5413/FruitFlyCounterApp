//
//  FruitFlyCounterApp.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//

import SwiftUI

@main
struct FruitFlyCounterApp: App {
    @StateObject private var vgseTable = Table(name: "VGSE Table")
    @StateObject private var vgebTable = Table(name: "VGEB Table")

    var body: some Scene {
        WindowGroup {
            MainView(vgseTable: vgseTable, vgebTable: vgebTable)
        }
    }
}


/*
import SwiftUI

@main
struct FruitFlyCounterApp: App {
    @StateObject private var vgseTable = Table(name: "VGSE Table")
    @StateObject private var vgebTable = Table(name: "VGE+B Table")

    init() {
        vgseTable.initRows(rowTitles: ["+;+", "+;SE", "VG;+", "VG;SE"])
        vgebTable.initRows(rowTitles: ["+;+", "+;EB", "VG;+", "VG;EB"])
    }

    var body: some Scene {
        WindowGroup {
            MainView(vgseTable: vgseTable, vgebTable: vgebTable)
        }
    }
}
*/
