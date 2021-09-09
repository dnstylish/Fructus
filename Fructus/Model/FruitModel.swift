//
//  FruitModel.swift
//  Fructus
//
//  Created by Yuan on 10/09/2021.
//

import SwiftUI

// tạo data model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
