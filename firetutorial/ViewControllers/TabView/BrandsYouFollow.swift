//
//  BrandsYouFollow.swift
//  firetutorial
//
//  Created by Charles Okehie on 12/11/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI
import Combine

class Favs: ObservableObject{
    @Published var value: Bool = true
    init(){
        self.value = false
    }
    func changevalue(){
        self.value.toggle()
    }
}

struct BrandsYouFollow: View {

    @ObservedObject var favs = Favs()
    @ViewBuilder
    var body: some View {
//        if favs.value{
        NavigationView{
            VStack {
                List{
//                    NavigationLink(destination: BusinessProfile()) {
                        
                        HStack{
                            
                            Image(self.favs.value ? "smartglass": "").resizable().frame(width: 50, height: 50, alignment: .center)
                            
                            Text(self.favs.value ? "Glasses" : "")
                            Spacer()
                            
                        }.padding(.leading, 10)
//                    }
                }.navigationBarTitle(Text("Title"))
//                Button(action: {
//                    self.favs.changevalue()
//                }){
//                    Image(systemName: self.favs.value ? "heart.fill" : "heart").foregroundColor(self.favs.value ? Color.yellow : Color.black.opacity(0.6))
//                }
            }
            
        }
//        } else {
//            Text("")
//        }
    }
}

struct BrandsYouFollow_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 14.0, *) {
            BrandsYouFollow()
        } else {
            // Fallback on earlier versions
        } //.environmentObject(Favs())
    }
}
