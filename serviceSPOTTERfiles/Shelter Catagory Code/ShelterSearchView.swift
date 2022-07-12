//
//  AnimalSearchView.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 8/2/21.
//

import SwiftUI

struct ShelterSearchView: View {
    var shelterOrganizationSection: [ShelterOrganizationSection] = ShelterOrganizationSectionList.ShelterSection
    var shelterOrganizationItem: [ShelterOrganizationItems] = ShelterOrganizationItemsList.shelterFirstTen
    @State var showFavoritesOnly = false
    var body: some View {
        NavigationView {
            
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Most Popular Services")
                }
                ForEach(shelterOrganizationItem) {
                    organization in
                    if self.showFavoritesOnly == false || (self.showFavoritesOnly == true && organization.isFavorite){
                        NavigationLink(destination: ShelterDetailView(organization: organization), label: {
                            Image(organization.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 70)
                                .cornerRadius(4.0)
                                .padding(.vertical, 4)
                            HStack {
                                Text(organization.title)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                
                                if organization.isFavorite {
                                    Image(systemName: "star.fill")
                                        .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.yellow)
                                    
                                }
                            }
                        })
                    
                    }
                    
                    
                    
                }
                
                
                
                // }
                
            }
            
            .navigationTitle("SHELTER")
            
        }
    }
    
    
}




struct ShelterSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ShelterSearchView()
    }
}

