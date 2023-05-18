//
//  ListDetailView.swift
//  SwiftUISample
//
//  Created by Ankit Sharma on 17/05/23.
//

import SwiftUI

struct ListDetailView: View {
    let profile: Profile
    @State var isZoomed: Bool = false
    
    var body: some View {
        
        VStack {
            Image(profile.imageName)
                .resizable()
                .aspectRatio(contentMode: isZoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        isZoomed.toggle()
                    }
                }
            
            Text(profile.name)
                .font(.largeTitle)
            Text(profile.surname)
                .font(.title)
        }
        .navigationBarTitle(profile.name, displayMode: .inline)
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(profile: .init(id: 1, name: "Ankit", surname: "Sharma", imageName: "1"))
    }
}
