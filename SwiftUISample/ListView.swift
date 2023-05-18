//
//  ListView.swift
//  SwiftUISample
//
//  Created by Ankit Sharma on 16/05/23.
//

import SwiftUI


struct Profile {
    var id: Int
    var name: String
    var surname: String
    var imageName: String
}

extension Profile {
    
    static let all: [Profile] = [
        .init(id: 1, name: "Ankita", surname: "Sharma", imageName: "1"),
        .init(id: 2, name: "Saurabh", surname: "Srivastava", imageName: "2"),
        .init(id: 3, name: "Mukul", surname: "Sharma", imageName: "3"),
        .init(id: 4, name: "Saurav", surname: "Kumar", imageName: "4"),
        .init(id: 5, name: "Ayan", surname: "Banerjee", imageName: "5"),
        .init(id: 6, name: "Ankita", surname: "Sharma", imageName: "1"),
        .init(id: 12, name: "Saurabh", surname: "Srivastava", imageName: "2"),
        .init(id: 13, name: "Mukul", surname: "Sharma", imageName: "3"),
        .init(id: 14, name: "Saurav", surname: "Kumar", imageName: "4"),
        .init(id: 15, name: "Ayan", surname: "Banerjee", imageName: "5")
    ]
}



struct ListView: View {
    let profiles = Profile.all
    
    var body: some View {
        
        NavigationView {
            List(self.profiles, id: \.id) { profile in
                NavigationLink(destination: ListDetailView(profile: profile)) {
                    ListCellView(profile: profile)
                }
            }
            .navigationBarTitle("Emplyee List")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct ListCellView: View {
    let profile: Profile
    var body: some View {
        HStack {
            Image(profile.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 8) {
                Text(profile.name)
                    .font(.headline)
                Text(profile.surname)
                    .font(.subheadline)
            }
        }
    }
}
