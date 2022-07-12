//
//  ReligionSearchView.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 8/2/21.
//



import SwiftUI

struct ClothingSearchView: View {
    var ClothingOrganizationSection: [ClothingOrganizationSection] = ClothingOrganizationSectionList.ClothingSection 
    var ClothingOrganizationItem: [ClothingOrganizationItems] = ClothingOrganizationItemsList.ClothingFirstTen
    @State var showFavoritesOnly = false
    var body: some View {
        NavigationView {
            
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Most Popular Services")
                }
                ForEach(ClothingOrganizationItem) {
                    organization in
                    if self.showFavoritesOnly == false || (self.showFavoritesOnly == true && organization.isFavorite){
                        NavigationLink(destination: ClothingDetailView(organization: organization), label: {
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
            
            .navigationTitle("CLOTHING")
            
        }
    }
    
    
}


struct ClothingSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ClothingSearchView()
    }
}

    

