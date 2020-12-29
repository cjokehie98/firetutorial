//
//  ReviewButton.swift
//  firetutorial
//
//  Created by Charles Okehie on 11/24/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//
//
import SwiftUI

struct ReviewButton: View {
    @State var popupOpen:Bool = false
    @State var stars:Int = 0
    
    var gesture: some Gesture {
        let updateRating: (CGFloat)->() = { x in
            let percent = max((x / 110.0), 0.0)
            self.stars = min(Int(percent * 5.0) + 1, 5)}
        
        return DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged({ val in
                updateRating(val.location.x)
            })
            .onEnded { val in
                updateRating(val.location.x)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    withAnimation {
                        self.popupOpen = false
                    }
                }
            }
    }
    var body: some View {
        Button(action: {
            withAnimation { self.popupOpen = !self.popupOpen }
        }) {
            VStack(alignment: .center, spacing: 8) {
                //Star Icon and Label Here...
                StarIcon(filled: stars > 0)
                Text("Rate This")
                    .foregroundColor(Color.black)
                    .font(Font.system(size: 11, weight: .semibold, design: .rounded))
            }
        }.overlay(
            HStack(alignment: .center, spacing: 4) {
                StarIcon(filled: stars > 0)
                StarIcon(filled: stars > 1)
                StarIcon(filled: stars > 2)
                StarIcon(filled: stars > 3)
                StarIcon(filled: stars > 4)
            }
            .gesture(gesture)
            .padding(.all, 12)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 0)
            .offset(x: 0, y: -70) // Move the view above the button
            .opacity(popupOpen ? 1.0 : 0)
            
        )
        
        
//                struct ReviewButton_Previews: PreviewProvider {
//                    static var previews: some View {
//                        ReviewButton()
//     
//            }
//        }
    }}


