//
//  ContentView.swift
//  oFu
//
//  Created by Ryoma Nakakita on 2022/01/06.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var debugData: DebugData
    let bounds = UIScreen.main.bounds
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                BackgroundView(imageName: "backgroundColor")
                DebugOnOffButton()
                    .position(x: 100, y: 0)
                if debugData.showing {
                    DebugView()
                }
                JoyStickView()
            }
        }
    }
}
   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(DebugData())
            
    }
}
