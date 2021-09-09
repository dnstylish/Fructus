//
//  FructusApp.swift
//  Fructus
//
//  Created by Yuan on 10/09/2021.
//

import SwiftUI

@main struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding) {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
