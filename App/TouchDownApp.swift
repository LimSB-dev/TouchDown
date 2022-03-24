//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/23.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
