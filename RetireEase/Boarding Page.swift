//
//  Boarding Page.swift
//  RetireEase
//
//  Created by Calvin Christiano on 26/04/24.
//

import SwiftUI

struct OnboardingPage: View {
    var body: some View {
        TabView {
            OnboardView(systemimageName: "Retireeaselogo", title: "RetireEase", description: "Welcome to future")
            OnboardView(systemimageName: "Retireeaselogo", title: "RetireEase", description: "Welcome to past")
            OnboardView(systemimageName: "Retireeaselogo", title: "RetireEase", description: "Welcome to present")
            OnboardView(systemimageName: "Retireeaselogo", title: "Let's Start!!", description: "Swipe")
        }
        .tabViewStyle(.page(indexDisplayMode:  .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}
#Preview {
    OnboardingPage()
}


struct OnboardView: View {
    
    let systemimageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            Image(systemimageName)
            Text(title)
            Text(description)
        }
    }
}
