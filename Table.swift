//
//  Table.swift
//  BIOL app v2
//
//  Created by Salad5413 on 3/21/23.
//

import Foundation
import SwiftUI

class Table: ObservableObject {
    @Published var name: String
    @Published var males: Int
    @Published var females: Int
    @Published var total: Int
    @Published var rows: [Row]

    init(name: String, males: Int = 0, females: Int = 0, total: Int = 0, rows: [Row] = []) {
        self.name = name
        self.males = males
        self.females = females
        self.total = total
        
        if rows.isEmpty {
            if name == "VGSE Table" {
                self.rows = [
                    Row(key: "+;+", males: 0, females: 0, total: 0),
                    Row(key: "+;SE", males: 0, females: 0, total: 0),
                    Row(key: "VG;+", males: 0, females: 0, total: 0),
                    Row(key: "VG;SE", males: 0, females: 0, total: 0)
                ]
            } else if name == "VGEB Table" {
                self.rows = [
                    Row(key: "+;+", males: 0, females: 0, total: 0),
                    Row(key: "+;EB", males: 0, females: 0, total: 0),
                    Row(key: "VG;+", males: 0, females: 0, total: 0),
                    Row(key: "VG;EB", males: 0, females: 0, total: 0)
                ]
            } else {
                self.rows = []
            }
        } else {
            self.rows = rows
        }
    }

    func initRows(rowTitles: [String]) {
        for title in rowTitles {
            let newRow = Row(key: title, males: 0, females: 0, total: 0)
            rows.append(newRow)
        }
    }
    
    func record(gender: String, eyeColor: String? = nil, bodyColor: String? = nil, wingType: String) {
        var key: String = ""
        
        if let eyeColor = eyeColor {
            key = (wingType == "normal" ? "+" : "VG") + ";" + (eyeColor == "red" ? "+" : "SE")
        } else if let bodyColor = bodyColor {
            key = (wingType == "normal" ? "+" : "VG") + ";" + (bodyColor == "caramel" ? "+" : "EB")
        }
        
        if let index = rows.firstIndex(where: { $0.key == key }) {
            if gender == "male" {
                rows[index].males += 1
            } else {
                rows[index].females += 1
            }
            rows[index].total += 1
        }
        
        if gender == "male" {
            males += 1
        } else {
            females += 1
        }
        total += 1
    }
}

struct Row: Identifiable {
    var id = UUID()
    var key: String
    var males: Int
    var females: Int
    var total: Int
}

/*
import Foundation
import SwiftUI

class Table: ObservableObject {
    @Published var name: String
    @Published var males: Int
    @Published var females: Int
    @Published var total: Int
    @Published var rows: [Row]

    init(name: String, males: Int = 0, females: Int = 0, total: Int = 0, rows: [Row] = []) {
        self.name = name
        self.males = males
        self.females = females
        self.total = total
        self.rows = rows
    }

    func initRows(rowTitles: [String]) {
        for title in rowTitles {
            let newRow = Row(key: title, males: 0, females: 0, total: 0)
            rows.append(newRow)
        }
    }
    
    func record(gender: String, eyeColor: String? = nil, bodyColor: String? = nil, wingType: String) {
        var key: String = ""
        
        if let eyeColor = eyeColor {
            key = (wingType == "normal" ? "+" : "VG") + ";" + (eyeColor == "red" ? "+" : "SE")
        } else if let bodyColor = bodyColor {
            key = (wingType == "normal" ? "+" : "VG") + ";" + (bodyColor == "caramel" ? "+" : "EB")
        }
        
        if let index = rows.firstIndex(where: { $0.key == key }) {
            if gender == "male" {
                rows[index].males += 1
            } else {
                rows[index].females += 1
            }
            rows[index].total += 1
        }
        
        if gender == "male" {
            males += 1
        } else {
            females += 1
        }
        total += 1
    }
}

struct Row: Identifiable {
    var id = UUID()
    var key: String
    var males: Int
    var females: Int
    var total: Int
}

*/
