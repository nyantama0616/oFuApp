import SwiftUI

class BLEData: ObservableObject {
    @Published var stickAngle: Float = 0.0
    
    func updateStickAngle(_ value: Float) {
        self.stickAngle = value
    }
    
    func stickAngleToDeg() -> Float {
        return stickAngle / (2 * .pi) * 360
    }
    
}
