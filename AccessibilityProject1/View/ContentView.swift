//
//  ContentView.swift
//  AccessibilityProject1
//
//  Created by Abhi on 12/10/21.
//

import SwiftUI


struct ContentView: View {
    
    @State var detailObj: Details
    @StateObject var sizeObj = SizeClass(fontSize: 14.0)
    
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer().frame(maxHeight: 16)
                
                Text("Accessibility SwiftUI")
                    .font(.system(size: 30, weight: .light, design: .default))
                
                Spacer().frame(maxHeight: 80)
                
                Group {
                    TextField("First Name", text: $detailObj.firstName)
                    TextField("Last Name", text: $detailObj.lastName)
                    TextField("Email ID", text: $detailObj.email)
                    TextField("Contact", text: $detailObj.phoneNumber)
                }
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(Color.white)
                .clipShape(Capsule())
                .shadow(color: Color(#colorLiteral(red: 0.3137254902, green: 0.8901960784, blue: 0.7607843137, alpha: 1)), radius: 1)
                
                Spacer().frame(maxHeight: 60)
                
                NavigationLink(
                    destination: DetailView(details: $detailObj, sizeObj: sizeObj),
                    label: {
                        Text("Detail View >>>")
                    })
                    .foregroundColor(Color(#colorLiteral(red: 0.3137254902, green: 0.8901960784, blue: 0.7607843137, alpha: 1)))
                
                SizeView(sizeObj: sizeObj)
                
                Spacer()
                
            }
            .padding()
            .navigationBarHidden(true)
            .font(.system(size: CGFloat(sizeObj.fontSize), weight: .light, design: .default))
            .accessibility(label: self)
        }
    }
}
