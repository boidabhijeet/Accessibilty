//
//  SizeView.swift
//  AccessibilityProject1
//
//  Created by apple on 12/10/21.
//

import SwiftUI

struct SizeView: View {
    
    @ObservedObject var sizeObj: SizeClass
    
    var body: some View {
        VStack {
            Text("Increase Or Decrease Font Size")
                .font(.system(size: sizeObj.fontSize, weight: .light, design: .default))
                .font(.subheadline)
            
            Slider(value: $sizeObj.fontSize, in: 10...32, step: 1)
                .padding()
                .accentColor(Color(#colorLiteral(red: 0.3137254902, green: 0.8901960784, blue: 0.7607843137, alpha: 1)))
                .border(Color("#066892"), width: 2)
        }
    }
}
