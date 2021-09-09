//
//  StartButtonView.swift
//  Fructus
//
//  Created by Yuan on 09/09/2021.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(
            action: {
                isOnboarding = false
            },
            label: {
                HStack(spacing: 8) {
                    Text("Start")
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                }
            }
        )
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().stroke(Color.white, lineWidth: 1.15)
        )
        .accentColor(Color.white)
    }
}

struct StartButtonPreview: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
