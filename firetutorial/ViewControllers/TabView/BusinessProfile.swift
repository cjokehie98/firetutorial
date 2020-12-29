//
//  BusinessProfile.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/28/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI
import Combine



struct BusinessProfile: View {
//    @State var status = true
//    @State var status2 = true
//    @State var status3 = true
    @ObservedObject var favs = Favs()
    var body: some View {
        VStack{
            Text("Favorites").font(.title).bold()
            Image("smartglass").resizable().scaledToFit()
            
            HStack {
                Text(verbatim:"$40").font(.title).bold().padding(.leading,30)
                Spacer()
                Button(action: {
                    self.favs.changevalue()
                }){
                    Image(systemName: self.favs.value ? "heart.fill" : "heart").foregroundColor(self.favs.value ? Color.yellow : Color.black.opacity(0.6))
                }
                
                Image(systemName:"cart").resizable().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }.padding(.trailing)
            
//            Image("pizza").resizable().scaledToFit()
//
//            HStack {
//                Text("$20").font(.title).bold().padding(.leading,30)
//                Spacer()
//                Toggle(isOn: $status2) {
//                    Text("")
//                }.toggleStyle(HeartToggleStyle())
//
//                Image(systemName:"cart").resizable().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            }.padding(.trailing)
//            Image("gb").resizable().scaledToFit()
//
//            HStack {
//                Text("$90").font(.title).bold().padding(.leading,30)
//                Spacer()
//                Toggle(isOn: $status3) {
//                    Text("")
//                }.toggleStyle(HeartToggleStyle())
//
//                Image(systemName:"cart").resizable().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            }.padding(.trailing)
//
        }.padding(.bottom,4)
        
    }
}

struct BusinessProfile_Previews: PreviewProvider {
    static var previews: some View {
        BusinessProfile()
    }
}

//                Button(action: {
//                    self.status.toggle()
//                }, label: {
//                    if status == true{
//                        Image(systemName:"heart.fill").resizable().frame(width: 30, height: 25, alignment: .center)
//                    } else{
//                        Image(systemName:"heart").resizable().frame(width: 30, height: 25, alignment: .center)
//                    }
//                })
