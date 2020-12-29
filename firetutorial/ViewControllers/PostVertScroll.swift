//
//  PostVertScroll.swift
//  firetutorial
//
//  Created by Charles Okehie on 11/16/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct PostVertScroll: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                NavigationLink(
                    destination:BusinessProfile()){
                    ZStack {
                        Image("art").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        Text("Art").font(.custom("Arial", size: 25)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
                    
                    NavigationLink(
                        destination:BusinessProfile()){
                        ZStack {
                            Image("beauty").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                            Text("Beauty").font(.custom("Arial", size: 25)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
                        
                        NavigationLink(
                            destination:BusinessProfile()){
                            ZStack {
                                Image("books").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                                Text("Books").font(.custom("Arial", size: 25)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }
                        }
                NavigationLink(
                    destination:BusinessProfile()){
                    ZStack {
                        Image("cannabis").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        Text("Cannabis").font(.custom("Arial", size: 19)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    
                            
                        
                        
                        
                        
                        
                    
                    }
            }
            Spacer()
            HStack{
                NavigationLink(
                    destination:BusinessProfile()){
                    ZStack {
                        Image("design").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        Text("Design").font(.custom("Arial", size: 21)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
                    
                    NavigationLink(
                        destination:BusinessProfile()){
                        ZStack {
                            Image("fashion").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                            Text("Fashion").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
                        
                        NavigationLink(
                            destination:BusinessProfile()){
                            ZStack {
                                Image("fitness").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                                Text("Fitness").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }
                        }
                NavigationLink(
                    destination:BusinessProfile()){
                    ZStack {
                        Image("food").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        Text("Food&Bev").font(.custom("Arial", size: 18)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    
                            
                        
                        
                        
                        
                        
                    
                    }
            }
            Spacer()
            HStack{
                NavigationLink(
                    destination:BusinessProfile()){
                    ZStack {
                        Image("health").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        Text("Health").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
                    
                    NavigationLink(
                        destination:BusinessProfile()){
                        ZStack {
                            Image("home").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                            Text("Home").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
                        
                        NavigationLink(
                            destination:BusinessProfile()){
                            ZStack {
                                Image("mountains").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                                Text("Nature").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }
                        }
                NavigationLink(
                    destination:BusinessProfile()){
                    ZStack {
                        
                        Image("party").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        Text("Party").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    
                            
                        
                        
                        
                        
                        
                    
                    }
            }
            Spacer()
            HStack{
                NavigationLink(
                    destination:BusinessProfile()){
                    ZStack {
                        Image("tech").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        Text("Tech").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
                    
                    NavigationLink(
                        destination:BusinessProfile()){
                        ZStack {
                            Image("trivia").resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fill).clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                            Text("Trivia").font(.custom("Arial", size: 22)).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
            }}.frame(width: 350, height: 500, alignment: .center)
    }
    
    struct PostVertScroll_Previews: PreviewProvider {
        static var previews: some View {
            PostVertScroll()
        }
    }
}
