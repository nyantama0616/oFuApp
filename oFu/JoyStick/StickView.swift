//
//  StickView.swift
//  oFu
//
// JoyStickのメインパーツ。
//
//  Created by Ryoma Nakakita on 2022/01/07.
//


import SwiftUI
import Foundation

class Angle: ObservableObject {
    @Published var value: Float = 0.0
    func update(_ value: Float) {
        self.value = value
    }
    
    func toDeg() -> Float {
        return value / (2 * .pi) * 360
    }
}

struct StickView: View {
        let size: CGFloat
        @GestureState private var dragOffset = CGSize.zero
        @State private var position = CGSize.zero
        @State private var angle = Angle()

        var body: some View {
        Image("stick")
            .resizable()
            .frame(width: size, height: size)
            .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
            .gesture(
            DragGesture()
                .updating($dragOffset, body: { (value, state, transaction) in
                    state = value.translation
                    let x = atan2f(Float(value.translation.height), Float(value.translation.width))
                    angle.update(x)
                })
                .onEnded { value in
                    angle.update(0.0)
                }
           )
          
    }
}

struct StickView_Previews: PreviewProvider {
    static var previews: some View {
        StickView(size: 80)
    }
}
