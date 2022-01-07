//
//  SwiftUIView.swift
//  oFu
//
//  Created by Ryoma Nakakita on 2022/01/06.
//

import SwiftUI

struct BackgroundView: View {
    let imageName: String
    var body: some View {
        Color(imageName)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "backgroundColor")
    }
}
