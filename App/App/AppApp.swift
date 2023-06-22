//
//  AppApp.swift
//  App
//
//  Created by Tonny on 22/06/23.
//

import XCFramework
import XCFrameworkWrapper

import SwiftUI

@main
struct AppApp: App {
    var body: some Scene {
        WindowGroup {
            Text(XCFrameworkWrapper().text)
            Text(XCFramework.Feature.name)
        }
    }
}
