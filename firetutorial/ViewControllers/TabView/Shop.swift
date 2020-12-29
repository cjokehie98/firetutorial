//
//  Shop.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/28/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct Shop: View {
    var body: some View {
        VStack {
            Text("SHOP").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            ScrollView(.horizontal){
                HStack {
                    
                    
                    VStack {
                        Image("suntree").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
                        Text("$$$")
                    }
                    VStack {
                        Image("settree").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
                        Text("$$$")
                    }
                    VStack {
                        Image("mountains").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
                        Text("$$$")
                    }
                    VStack {
                        Image("sunrise").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
                        Text("$$$")
                    }
                    VStack {
                        Image("pier").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
                        Text("$$$")
                    }
                    

                }
                
                
            }
            
            
            Spacer()
            NavigationLink(destination: Reviews()) { Text("Reviews").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        
        
    }
    
    
}

struct Shop_Previews: PreviewProvider {
    static var previews: some View {
        Shop()
    }
}
}
