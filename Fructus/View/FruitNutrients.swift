//
//  FruitNutrients.swift
//  Fructus
//
//  Created by Yuan on 10/09/2021.
//

import SwiftUI

struct FruitNutrients: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Entry", "Sugar", "Fat", "Protein", "Vinamin", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Đây là text demo") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                    }
                }
            }
        } //: Box
    }
}

struct FruitNutrients_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrients(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .preferredColorScheme(.dark)
            .padding()
    }
}
