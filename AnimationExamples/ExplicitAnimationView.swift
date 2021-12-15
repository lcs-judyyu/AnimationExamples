//
//  ExplicitAnimationView.swift
//  AnimationExamples
//
//  Created by Judy Yu on 2021-12-15.
//

import SwiftUI

struct ExplicitAnimationView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
               animationAmount += 360
            }
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 1, z: 1))
    }
}

struct ExplicitAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimationView()
    }
}
