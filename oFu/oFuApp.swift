//
//  oFuApp.swift
//  oFu
//
//  Created by Ryoma Nakakita on 2022/01/06.
//

import SwiftUI

@main
struct oFuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
