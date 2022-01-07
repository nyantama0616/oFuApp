//
//  ContentView.swift
//  oFu
//
//  Created by Ryoma Nakakita on 2022/01/06.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(imageName: "backgroundColor")
            JoyStickView()
        }
        
    }
}
   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
