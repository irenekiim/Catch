//
//  CardView.swift
//  Catch
//
//  Created by Irene on 8/5/22.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    let id = UUID()
    var c_atch: Destination
    
    
    var body: some View {
        //Image(c_atch.image)
        Image("Princeton")
            .resizable()
            .cornerRadius(25)
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12) {
                    Text(c_atch.name.uppercased())
                        .foregroundColor(Color.white)
                    Text(c_atch.location.uppercased())
                        .foregroundColor(Color.white)
                }
                .frame(minWidth: 280)
                .padding(.bottom, 50),
                alignment: .bottom
            
            )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(c_atch: catchData[0])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
