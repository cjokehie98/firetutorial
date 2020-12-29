//
//  NewHomeSUI.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/19/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI
import UIKit

struct NewHomeSUI: View {
    
    @State private var isActive = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                VStack {
                    HStack {
                        Spacer()
                        Spacer()
                        NavigationLink(destination: DiscoverSUI()) { Image(systemName: "magnifyingglass").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.leading,-20)
                        }
                        Spacer()
                        
                        Text("U&I").font(.largeTitle)
                        
                        Spacer()
                        
                        NavigationLink(
                            destination: CheckOut()){
                            Image(systemName:"cart").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)}
                        NavigationLink(destination: NewProfile()) { Image(systemName:"person.circle.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                        Spacer()
                    }.padding(.top,-90)
                    
                    IntegratedAd().padding(.top,0).padding(.bottom,0)
                    Text("ad slideshow").padding(.bottom,20).padding(.top,35)
                    
                    ScrollView(.horizontal){
                        HStack {
                                NavigationLink(
                                    destination:BrandsYouFollow()){
                                    VStack {
                                        Image("couple").resizable().frame(width: 150, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        Text("button")
                                    }
                                }
                            }
                            }
                            Image("meditate").resizable().frame(width: 150, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Image("poisonivy").resizable().frame(width: 150, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Image("sisters").resizable().frame(width: 150, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Image("snomance").resizable().frame(width: 150, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }.padding(.top,-27)
                    
//                    ScrollView(.horizontal){
//                        HStack {
//
//                            NavigationLink(
//                                destination:BusinessProfile()){
//                                VStack {
//                                    Image("suntree").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
//                                    Text("click me for business profile")
//                                }
//                            }
//                            Image("settree").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
//                            Image("mountains").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
//                            Image("sunrise").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
//                            Image("pier").resizable().frame(width: 400, height: 400, alignment: .center).cornerRadius(25)
//
//                        }
//                    }
                    //
                    
                }
                
                PostVertScroll()
            }
        }


struct NewHomeSUI_Previews: PreviewProvider {
    static var previews: some View {
        NewHomeSUI()
    }
}

