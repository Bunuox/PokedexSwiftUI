//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Bünyamin Kılıçer on 23.11.2021.
//

import SwiftUI

@main
struct PokedexApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
