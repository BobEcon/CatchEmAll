//
//  DetailView.swift
//  CatchEmAll
//
//  Created by Robert Beachill on 05/05/2025.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment:.leading) {
        Text("PokeName")
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
            }
            
         Spacer()
        }
    }
}

#Preview {
    DetailView()
}
