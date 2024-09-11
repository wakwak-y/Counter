//
//  CounterApp.swift
//  Counter
//
//  Created by Yu Wakui on 2024/09/10.
//

import ComposableArchitecture
import SwiftUI

@main
struct CounterApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: CounterApp.store)
        }
    }
}
