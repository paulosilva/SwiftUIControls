//
//  ContentView.swift
//  SwiftUIControls
//
//  Created by Paulo Silva on 06/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myName: String = "My Name"
    @State private var myPassword: String = "My Password"

    var body: some View {
        
        VStack {
            
            CUIText(text: "Some text ;)")
                .padding()
            
            CUISecureText(text: "Some secured text ;)")
                .padding()
            
            CUITextField("Your Name", text: $myName)
                .padding()
            
            CUISecureTextField("Passsword:", text: $myPassword)
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
