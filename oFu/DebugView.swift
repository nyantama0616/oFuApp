import SwiftUI

class DebugData: ObservableObject {
    @Published var text: String = ""
    @Published var showing: Bool = false
    func updateText(_ text: String) {
        self.text = text
    }
    
    func toggle() {
        showing = !showing
    }
}

struct DebugView: View {
    @EnvironmentObject var debugData: DebugData
    var body: some View {
        VStack {
            Text("Debug Text:")
            Text(debugData.text)
        }
    }
}

struct DebugOnOffButton: View {
    @EnvironmentObject var debugData: DebugData
    var body: some View {
        Button("DEBUG: " + (debugData.showing ? "OFF" : "ON")) {
            debugData.toggle()
        }
    }
}

struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
