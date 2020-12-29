//
//  SignUpButton.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/28/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct SignUpButton: View {
    var body: some View {
        HStack {
            NavigationLink(destination: Shop()) { Text("Shop").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Sign Up").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Causes").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
}

struct SignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton()
    }
}
}
