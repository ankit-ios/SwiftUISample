//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Ankit Sharma on 11/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.all)
            Text("Ankit ")
                .font(.largeTitle)
            Text("Sharma")
                .font(.title)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
