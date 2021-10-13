//
//  AccessibilityProject1App.swift
//  AccessibilityProject1
//
//  Created by Abhi on 12/10/21.
//

import SwiftUI

@main
struct AccessibilityProject1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(detailObj: Details(firstName: "Dave", lastName: "M", email: "dave.m@apple.com", phoneNumber: "8729002121"))
        }
    }
}
