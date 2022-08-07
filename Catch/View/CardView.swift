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
        Image(c_atch.image)
            .resizable()
            .aspectRatio(contentMode:.fill)
            .frame(minWidth: 0, maxWidth: 400)
            .cornerRadius(24)
            .overlay(
                VStack(alignment: .center, spacing: 12) {
                    Text(c_atch.name.uppercased())
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 5)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(Color.white)
                                .frame(height: 1),
                            alignment: .bottom)
                    
                    
                    Text(c_atch.location.uppercased())
                        .foregroundColor(Color.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Capsule().fill(Color.white)
                        )
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
