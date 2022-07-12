//
//  HealthCareSearchView.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/7/21.
//

import SwiftUI

struct HealthCareSearchView: View {
    var HealthCareOrganizationSection: [HealthCareOrganizationSection] = HealthCareOrganizationSectionList.HealthCareSection
    var HealthCareOrganizationItem: [HealthCareOrganizationItems] = HealthcareOrganizationItemsList.HealthcareFirstTen
    @State var showFavoritesOnly = false
    var body: some View {
        NavigationView {
            
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Most Popular Services")
                }
                ForEach(HealthCareOrganizationItem) {
                    organization in
                    if self.showFavoritesOnly == false || (self.showFavoritesOnly == true && organization.isFavorite){
                        NavigationLink(destination: HealthCareDetailViews(organization: organization), label: {
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
            
            .navigationTitle("HEALTHCARE")
            
        }
    }
    
    
}



struct HealthCareSearchView_Previews: PreviewProvider {
    static var previews: some View {
        HealthCareSearchView()
    }
}
