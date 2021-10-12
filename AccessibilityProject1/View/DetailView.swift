//
//  DetailView.swift
//  AccessibilityProject1
//
//  Created by Abhi on 12/10/21.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var email: String
    @Binding var phoneNumber: String
    @Binding var fontSize: CGFloat
    
    var body: some View {
        VStack{
            Spacer().frame(maxHeight: 32)
            
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("First Name:")
                    Text("Last Name:")
                    Text("Email:")
                    Text("Contact:")
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(firstName)
                    Text(lastName)
                    Text(email)
                    Text(phoneNumber)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))

            SizeView()
            
            Spacer()
        }
        .font(.system(size: CGFloat(fontSize), weight: .light, design: .default))
    }
}
