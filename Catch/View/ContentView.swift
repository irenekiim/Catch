//
//  ContentView.swift
//  Catch
//
//  Created by Irene on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(c_atch: catchData[0])
            .padding(.vertical, 80.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
