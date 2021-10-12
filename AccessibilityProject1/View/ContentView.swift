//
//  ContentView.swift
//  AccessibilityProject1
//
//  Created by Abhi on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName: String
    @State var lastName: String
    @State var email: String
    @State var phoneNumber: String
    @Binding var fontSize: CGFloat
    
        
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(maxHeight: 12)
                
                Text("Accessibility SwiftUI")
                    .font(.system(size: 30, weight: .light, design: .default))

                Spacer().frame(maxHeight: 80)
                
                Group {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email ID", text: $email)
                    TextField("Contact", text: $phoneNumber)
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
                    destination: DetailView(firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, fontSize: $fontSize),
                    label: {
                        Text("Detail View >>>")
                    })
                    .foregroundColor(Color(#colorLiteral(red: 0.3137254902, green: 0.8901960784, blue: 0.7607843137, alpha: 1)))
            
                
                SizeView()
                
                Spacer()
                
            }
            .padding()
            .navigationBarHidden(true)
            .font(.system(size: CGFloat(fontSize), weight: .light, design: .default))
        }
    }
}
