//
//  AustinOrganizationsFull.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 8/1/21.
//

import SwiftUI

struct AustinOrganizationsFull: View {
    var organization: [Organization] = OrganizationList.topTen
    var body: some View {
        NavigationView {
            List(organization, id: \.id){ org in
                NavigationLink(
                    destination: OrganizationDetails(organization:org), label: {
                        Text("")
                
                Image(org.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(4.0)
                    .padding(.vertical, 4)
                    .multilineTextAlignment(.center)
                    
                VStack {
                    Text(org.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                    Text(org.typeOfOrganization)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                    })
                
            }
            .navigationTitle("Service Directions:")
            
        }
    }
}
    

struct AustinOrganizationsFull_Previews: PreviewProvider {
    static var previews: some View {
        AustinOrganizationsFull()
    }
}
    


