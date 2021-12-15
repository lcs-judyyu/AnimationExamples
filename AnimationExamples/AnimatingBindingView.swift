//
//  AnimatingBindingView.swift
//  AnimationExamples
//
//  Created by Judy Yu on 2021-12-15.
//

import SwiftUI

struct AnimatingBindingView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        print(animationAmount)
        
        return VStack {
                    Stepper("Scale amount", value: $animationAmount.animation(
                        .easeInOut(duration: 1)
                            .repeatCount(3, autoreverses: true)
                    ), in: 1...10)

                    Spacer()

                    Button("Tap Me") {
                        animationAmount += 1
                    }
                    .padding(40)
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .scaleEffect(animationAmount)
                }
    }
}

struct AnimatingBindingView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindingView()
    }
}
