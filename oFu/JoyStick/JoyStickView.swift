import SwiftUI

struct JoyStickView: View {
    let circleSize: CGFloat = 300
    let joyStickSize: CGFloat = 80
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Image("JoyStickCircle")
                    .resizable()
                    .frame(width: circleSize, height: circleSize)
                Image("JoyStick")
                    .resizable()
                    .frame(width: joyStickSize, height: joyStickSize)
            }
        }
    }
}

struct JoyStickView_Previews: PreviewProvider {
    static var previews: some View {
        JoyStickView()
    }
}
