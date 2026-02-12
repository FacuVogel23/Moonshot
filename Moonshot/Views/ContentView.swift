//
//  ContentView.swift
//  Moonshot
//
//  Created by Facundo Vogel on 09/02/2026.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var isShowingGrid = true
    
    var body: some View {
        NavigationStack {
            Group {
                if isShowingGrid {
                    MainGridView(astronauts: astronauts, missions: missions)
                } else {
                    MainListView(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button("Grid or List", systemImage: (isShowingGrid ? "list.bullet" : "square.grid.2x2")) {
                    isShowingGrid.toggle()
                }
                .tint(.white.opacity(0.6))
            }
        }
    }
}

#Preview {
    ContentView()
}
