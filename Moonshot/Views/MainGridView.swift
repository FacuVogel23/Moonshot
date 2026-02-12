//
//  MainGridView.swift
//  Moonshot
//
//  Created by Facundo Vogel on 12/02/2026.
//

import SwiftUI

struct MainGridView: View {
    
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var viewOpacity = 0.0
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                 ForEach(missions) { mission in
                     NavigationLink {
                          MissionView(mission: mission, astronauts: astronauts)
                     } label: {
                         VStack {
                             Image(mission.image)
                                 .resizable()
                                 .scaledToFit()
                                 .frame(width: 100, height: 100)
                                 .padding()
                             
                             VStack {
                                 Text(mission.displayName)
                                     .font(.headline)
                                     .foregroundStyle(.white)
                                 
                                 Text(mission.formattedLaunchDate)
                                     .font(.caption)
                                     .foregroundStyle(.white.opacity(0.5))
                             }
                             .padding(.vertical)
                             .frame(maxWidth: .infinity)
                             .background(.lightBackground)
                         }
                         .clipShape(.rect(cornerRadius: 10))
                         .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground)
                         )
                     }
                }
            }
            .padding([.horizontal, .bottom])
        }
        .onAppear {
            viewOpacity += 1
        }
        .opacity(viewOpacity)
        .animation(.easeInOut(duration: 0.5), value: viewOpacity)
    }
}

#Preview {
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MainGridView(astronauts: astronauts, missions: missions)
        .preferredColorScheme(.dark)
}
