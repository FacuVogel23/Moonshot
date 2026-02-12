//
//  MainListView.swift
//  Moonshot
//
//  Created by Facundo Vogel on 12/02/2026.
//

import SwiftUI

struct MainListView: View {
    
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    @State private var viewOpacity = 0.0
    
    var body: some View {
            List {
                 ForEach(missions) { mission in
                     NavigationLink {
                          MissionView(mission: mission, astronauts: astronauts)
                     } label: {
                         HStack {
                             Image(mission.image)
                                 .resizable()
                                 .scaledToFit()
                                 .frame(width: 80, height: 80)
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
                             .clipShape(.rect(cornerRadius: 10))
                             .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.white.opacity(0.5))
                             )
                             .padding(.trailing)
                         }
                     }
                     .listRowSeparator(.hidden)
                     .listRowBackground(Color.darkBackground)
                }
            }
            .listStyle(.plain)
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
    
    return MainListView(astronauts: astronauts, missions: missions)
        .preferredColorScheme(.dark)
}
