//
//  CUIText.swift
//  SwiftUIControls
//
//  Created by Paulo Silva on 06/07/2021.
//

import SwiftUI

struct CUIText: View {
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
            
            Text(text)
                .foregroundColor(Color.gray.opacity(0.9))
            
            Spacer()
            
            if allowCopy {
                
                Button(action: {
                    
                    // Copy to clipboard
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

struct CUIText_Previews: PreviewProvider {
    static var previews: some View {
        CUIText(text: "Welcome ...")
    }
}
