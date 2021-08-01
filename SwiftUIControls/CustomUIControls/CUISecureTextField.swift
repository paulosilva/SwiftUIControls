//
//  CUISecureTextField.swift
//  SwiftUIControls
//
//  Created by Paulo Silva on 01/08/2021.
//

import SwiftUI

struct CUISecureTextField: View {
    @State private var showText: Bool = false
    @Binding var text: String
    var label: String

    init(_ label: String = "", text:  Binding<String>) {
        self.label = label
        self._text = text
    }
    
    var body: some View {
        HStack {
            
            if showText {
                TextField(label, text: $text)
            } else {
                SecureField(label, text: $text)
            }
        
            Button(action: {
                showText.toggle()
            }, label: {
                Image(systemName: showText ? "eye.slash.fill" : "eye.fill" )
                    .foregroundColor(showText ? .red : .red.opacity(0.55))
                    .font(.system(size: 20, weight: .bold))
                    .padding(.leading, 4)
            })
            .buttonStyle(BorderlessButtonStyle())
            
        }
    }
}

struct aSynapseSecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        CUISecureTextField("Passsword:", text: .constant("my password"))
    }
}
