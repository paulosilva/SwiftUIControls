//
//  CUISecureText.swift
//  SwiftUIControls
//
//  Created by Paulo Silva on 11/07/2021.
//

import SwiftUI

struct CUISecureText: View {
    @State private var showText: Bool = false
    var label: String
    var text: String
    var allowCopy: Bool = true
    
    init(_ label: String = "", text: String, allowCopy: Bool = true) {
        self.label = label
        self.text = text
        self.allowCopy = allowCopy
    }
    
    var body: some View {
        
        HStack {
            if !label.isEmpty {
                Text(label)
            }
            
            Text(showText ? text : text.mask())
                .foregroundColor(Color.gray.opacity(0.9))
            
            Spacer()
            
            Button(action: {
                showText.toggle()
            }, label: {
                Image(systemName: showText ? "eye.slash.fill" : "eye.fill" )
                    .foregroundColor(showText ? .red : .red.opacity(0.55))
                    .font(.system(size: 20, weight: .bold))
                    .padding(.leading, 4)
            })
            .buttonStyle(BorderlessButtonStyle())
            
            if allowCopy {
                
                Button(action: {
                    
                    // Copy password to clipboard
                    UIPasteboard.general.string = text
                    
                }, label: {
                    Image(systemName: "doc.on.doc.fill" )
                        .foregroundColor(.blue.opacity(0.55))
                        .font(.system(size: 20, weight: .bold))
                        .padding(.leading, 4)
                })
                .buttonStyle(BorderlessButtonStyle())
                
            }

        }
    }
}

struct SecureText_Previews: PreviewProvider {
    static var previews: some View {
        CUISecureText(text: "Welcome ...")
    }
}
