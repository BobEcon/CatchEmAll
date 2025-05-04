//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by Robert Beachill on 01/05/2025.
//

import SwiftUI

struct CreaturesListView: View {
    var creatures = ["Pikachu", "Squirtle", "Charzard", "Snorlax"]
    var body: some View {
        NavigationStack {
            List(creatures, id: \.self) { creature in
                Text(creature)
                    .font(.title2)
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
    }
}

#Preview {
    CreaturesListView()
}
