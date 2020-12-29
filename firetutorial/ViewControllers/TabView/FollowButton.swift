//
//  FollowButton.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/28/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct FollowButton: View {
    @State private var Ocolor = Color.blue
    @State private var Ocorner: CGFloat = 12
    @State private var Otext = "follow"
    
    var body: some View {
        VStack{
            Button(action:{
                self.Ocolor = self.Ocolor == Color.blue ? Color.green : Color.blue
                self.Ocorner = self.Ocorner == 12 ? 75 : 12
                self.Otext = self.Otext == "follow" ? "followed" : "follow"
            }){
                Text(Otext)
                    .foregroundColor(.red)
                    .frame(width: 90, height: 50, alignment: .center)
                    .background(Ocolor)
                    .font(.body)
                    .cornerRadius(Ocorner)
                
            }.animation(.spring(response: 0.5, dampingFraction: 2, blendDuration: 0.5))
        }
    }
}

struct FollowButton_Previews: PreviewProvider {
    static var previews: some View {
        FollowButton()
    }
}
