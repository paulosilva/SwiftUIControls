//
//  ContentView.swift
//  SwiftUIControls
//
//  Created by Paulo Silva on 06/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            CUIText(text: "Some text ;)")
                .padding()
            
            CUISecureText(text: "Some secured text ;)")
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
