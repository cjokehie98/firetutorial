//
//  AnimatedButtons.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/14/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct AnimatedButtons: View {
    @State private var Ocolor = Color.blue
    @State private var Ocorner: CGFloat = 12
    @State private var Otext = "add me"
    
    var body: some View {
        VStack{
            Button(action:{
                self.Ocolor = self.Ocolor == Color.blue ? Color.green : Color.blue
                self.Ocorner = self.Ocorner == 12 ? 75 : 12
                self.Otext = self.Otext == "add me" ? "added" : "add me"
            }){
                Text(Otext)
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100, alignment: .center)
                    .background(Ocolor)
                    .font(.title)
                    .cornerRadius(Ocorner)
                
            }.animation(.spring(response: 0.5, dampingFraction: 2, blendDuration: 0.5))
        }
    }
}

struct AnimatedButtons_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButtons()
    }
}
