//
//  SizeClass.swift
//  AccessibilityProject1
//
//  Created by apple on 13/10/21.
//

import Foundation
import SwiftUI

class SizeClass: ObservableObject {
    @Published var fontSize: CGFloat
    
    init(fontSize: CGFloat) {
        self.fontSize = fontSize
    }
}
