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

struct StickView: View {
        @EnvironmentObject private var BLEdata: BLEData
        let size: CGFloat
        @GestureState private var dragOffset = CGSize.zero
        @State private var position = CGSize.zero
//        @EmvironmentObject private var angle = Angle()

        var body: some View {
        VStack {

        Button("1000") {
            BLEdata.updateStickAngle(.pi/2)
        }
        Image("stick")
            .resizable()
            .frame(width: size, height: size)
            .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
            .gesture(
            DragGesture()
                .updating($dragOffset, body: { (value, state, transaction) in
                    state = value.translation
                    let x = atan2f(Float(value.translation.height), Float(value.translation.width))
                    BLEdata.updateStickAngle(x)
                })
                .onEnded { value in
                    BLEdata.updateStickAngle(0.0)
                }
           )
        Text("\(BLEdata.stickAngleToDeg())")
        }
          
    }
}

struct StickView_Previews: PreviewProvider {
    static var previews: some View {
        StickView(size: 80)
    }
}
