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
    @State var changeFont: Bool = false
    
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

            
            Spacer().frame(maxHeight: 32)

            Button("Change Font Size") {
                self.changeFont.toggle()
            }
            .foregroundColor(Color(#colorLiteral(red: 0.3137254902, green: 0.8901960784, blue: 0.7607843137, alpha: 1)))
            
            Spacer()
        }
        .modifier(CustomViewModifier())
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(firstName: .constant(""), lastName: .constant(""), email: .constant(""), phoneNumber: .constant(""))
    }
}

struct CustomViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20, weight: .light, design: .default))
    }
}
