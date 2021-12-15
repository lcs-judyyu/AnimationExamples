//
//  ControllingAnimationStackView.swift
//  AnimationExamples
//
//  Created by Judy Yu on 2021-12-15.
//

import SwiftUI

struct ControllingAnimationStackView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundColor(.white)
        .animation(.default, value: enabled)
        //NOTE: only changes that occur before the animation() modifier get animated
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
    }
}

struct ControllingAnimationStackView_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimationStackView()
    }
}
