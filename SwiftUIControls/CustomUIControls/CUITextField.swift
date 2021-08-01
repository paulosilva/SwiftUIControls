//
//  CUITextField.swift
//  SwiftUIControls
//
//  Created by Paulo Silva on 01/08/2021.
//

import SwiftUI

struct CUITextField: View {
    @State private var showText: Bool = false
    @Binding var text: String
    var label: String

    init(_ label: String = "", text:  Binding<String>) {
        self.label = label
        self._text = text
    }
    
    var body: some View {
        HStack {
            
            TextField(label, text: $text)

            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }, label:  {
                    Image(systemName: "delete.left")
                        .foregroundColor(Color(UIColor.opaqueSeparator))
                })
                .buttonStyle(BorderlessButtonStyle())
                .padding(.trailing, 4)
            }
        }
    }
}

struct CUITextField_Previews: PreviewProvider {
    static var previews: some View {
        CUITextField("Name:", text: .constant("my name"))
    }
}
