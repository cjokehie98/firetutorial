//
//  Discover.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/18/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//I want this search bar to present the stuff on LandmarkDetail

import SwiftUI

struct DiscoverSUI: View {
    let names = ["Turtle Rock", "Silver Salmon Creek", "Chilkoot Trail","St. Mary Lake","Twin Lake","Lake McDonald","Charley Rivers","Icy Bay","Rainbow Lake","Hidden Lake","Chincoteague","Lake Umbagog",]
    @State private var searchText : String = ""

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search landmarks")
                List {
                    ForEach(self.names.filter {
                        self.searchText.isEmpty ? true : $0.lowercased().contains(self.searchText.lowercased())
                    }, id: \.self) { name in
                        Text(name)
                    }
                }
            }.navigationBarTitle(Text("Find Landmarks"))
        }
    }
}

struct SearchBar: UIViewRepresentable {

    @Binding var text: String
    var placeholder: String

    class Coordinator: NSObject, UISearchBarDelegate {

        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = placeholder
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverSUI()
    }
}
// embed in scroll view after, see about slide deck
// make a way to call from list
// want a maginifying glass that just animates into a search bar overlay
