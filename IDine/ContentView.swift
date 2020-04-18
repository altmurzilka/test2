//
//  ContentView.swift
//  IDine
//
//  Created by алтынпончик on 4/16/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) { // static list view
                        
                        ForEach(section.items)  { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }.navigationBarTitle("Menu")   // modifier
            .listStyle(GroupedListStyle())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
