//
//  ContentView.swift
//  Fructus
//
//  Created by Yuan on 09/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        }
                    )
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(
                    action: {
                        isShowingSettings = true
                    },
                    label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                ).sheet(isPresented: $isShowingSettings) {
                    SettingView()
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
