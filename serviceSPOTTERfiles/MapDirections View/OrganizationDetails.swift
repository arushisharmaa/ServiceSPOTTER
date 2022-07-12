//
//  OrganizationDetails.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 7/22/21.
//

import SwiftUI

struct OrganizationDetails: View {
    
    var organization: Organization
    
    var body: some View {
            VStack(alignment: .center, spacing:25 , content: {
                ScrollView(.vertical, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                    Spacer()
                    Spacer()
                    Image(organization.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame( height:100)
                        .cornerRadius(10)
                    
                    Text(organization.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .lineLimit(3)
                        .multilineTextAlignment(.center)

                    
                    Link(destination: organization.url, label: {
                        Text("Link to the Directions")
                            .bold()
                            .font(.title2)
                            .frame(width: 300, height:50)
                            .background(Color(.systemRed))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }) //LINK
                    
                }) //SCROLL
            }) //VSTACK
            .padding(.trailing,30)
            .padding(.leading,10)
    }
}
    
    struct OrganizationDetails_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                OrganizationDetails(organization: OrganizationList.topTen.first!)
            }
        }
    }

