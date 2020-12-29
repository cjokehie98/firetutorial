//
//  CheckOut.swift
//  firetutorial
//
//  Created by Charles Okehie on 11/24/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct CheckOut: View {
    @State private var text = ""
    var body: some View {
        VStack {
            Text("$40 total").font(.title).bold()
            Text("1 item")
            Image("smartglass").resizable().scaledToFit()
            
            HStack {
                Text("$40").font(.title).bold().padding(.leading,45)
                Spacer()
                
            }.padding(.trailing)
            Text("smartglasses").padding(.trailing,250)
            Text("Qty 1").bold().padding(.trailing,250)
            HStack {
                Text(" + Add Promo Code")
                TextField("promo code", text: $text).textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack{
                Image("box").resizable().frame(width: 75, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Free 2-day shipping                                   Get it by January 1st, 2021").multilineTextAlignment(.leading)
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.gray)
                    .frame(width: 360, height:170)
                VStack {
                    Text("Order Summary").font(.title).bold()
                    
                    HStack{VStack{ Text("Subtotal $40")
                        
                        
                        
                        Text("Delivery: FREE")
                        Text("Est. Tax $4.80")
                        Text("Total $44.80")
                    }
                    VStack {
                        Ellipse()
                            .fill(Color.yellow)
                            .frame(width: 100, height: 50)
                        Text("PTS Earned")
                        Text("50")
                    }.padding(.leading,90)                    }
                }
            }.padding(.bottom,10)
            
            HStack{
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .fill(Color.gray)
                        .frame(width: 130, height: 50)
                    Text("Check Out").bold()
                }
                Spacer()
                ApplePay() .frame(width: 130, height: 50)
                Spacer()
            }
            
            
            
        }
        
    }
}



struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut()
    }
}
