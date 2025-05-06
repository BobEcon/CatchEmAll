//
//  DetailView.swift
//  CatchEmAll
//
//  Created by Robert Beachill on 05/05/2025.
//

import SwiftUI

struct DetailView: View {
    let creature: Creature
    
    var body: some View {
        VStack(alignment:.leading, spacing: 3) {
        Text(creature.name)
             .font(Font.custom("Avenir Next Condensed", size: 60))
             .bold()
             .minimumScaleFactor(0.5)
             .lineLimit(1)
         
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.gray)
                .padding(.bottom)
           
            HStack {
                Image(systemName: "figure.run.circle")
                    .resizable()
                    .scaledToFit()
                    .background(.white)
                    .frame(width: 96, height: 96)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(radius: 8, x: 5, y: 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.gray.opacity(0.5), lineWidth: 1)
                    }
                    .padding(.trailing)
                
                VStack {
                    HStack(alignment:.top) {
                        Text("Height:")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.red)
                        
                        Text("999.9")
                            .font(.largeTitle)
                            .bold()
                    }
                    
                    HStack(alignment:.top) {
                        Text("Weight:")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.red)
                        
                        Text("999.9")
                            .font(.largeTitle)
                            .bold()
                    }
                }
            }
            
         Spacer()
            
        }
        .padding()
    }
}

#Preview {
    DetailView(creature: Creature(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"))
}
