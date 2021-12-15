//
//  AnimateGestures.swift
//  AnimationExamples
//
//  Created by Judy Yu on 2021-12-15.
//

import SwiftUI

struct AnimateGestures: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(dragAmount)
                    .gesture(
                        DragGesture()
                            .onChanged { dragAmount = $0.translation }
                            .onEnded { _ in
                                withAnimation(.spring()) {
                                    dragAmount = .zero
                                }
                            }
                    )
    }
}

struct AnimateGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimateGestures()
    }
}
