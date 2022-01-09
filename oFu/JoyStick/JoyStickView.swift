import SwiftUI

struct JoyStickView: View {
    let circleSize: CGFloat = 300
    let stickSize: CGFloat = 80
    var body: some View {
        VStack {
            Spacer()
            
                ZStack {
                    Image("joyStickCircle")
                        .resizable()
                        .frame(width: circleSize, height: circleSize)
                    StickView(size: stickSize)
                }
        }
    }
}

struct JoyStickView_Previews: PreviewProvider {
    static var previews: some View {
        JoyStickView()
    }
}
