//
//  ContentView.swift
//  CardsView
//
//  Created by Vemireddy Vijayasimha Reddy on 31/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            PersonCardsView(person: person1)
                .listRowSeparator(.hidden)
            PersonCardsView(person: person1)
                .listRowSeparator(.hidden)
            PersonCardsView(person: person1)
                .listRowSeparator(.hidden)
            
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
