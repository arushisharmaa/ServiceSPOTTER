//
//  CatagorizeALL.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 8/2/21.
//

import SwiftUI

struct CatagorizeALL: View {
    
    var organization: [Organization] = OrganizationList.topTen
    
    var foodOrganizationSection: [FoodOrganizationSection] = FoodOrganizationSectionList.foodSection
    var foodOrganizationItem: [FoodOrganizationItems] = FoodOrganizationItemsList.foodFirstTen
    
    var shelterOrganizationSection: [ShelterOrganizationSection] = ShelterOrganizationSectionList.ShelterSection
    var shelterOrganizationItem: [ShelterOrganizationItems] = ShelterOrganizationItemsList.shelterFirstTen
    
    var ClothingOrganizationSection: [ClothingOrganizationSection] = ClothingOrganizationSectionList.ClothingSection
    var ClothingOrganizationItem: [ClothingOrganizationItems] = ClothingOrganizationItemsList.ClothingFirstTen
    
    var HealthCareOrganizationSection: [HealthCareOrganizationSection] = HealthCareOrganizationSectionList.HealthCareSection
    var HealthCareOrganizationItem: [HealthCareOrganizationItems] = HealthcareOrganizationItemsList.HealthcareFirstTen
    
    var body: some View {

        NavigationView {
            List{
                ForEach(foodOrganizationItem){ org in
                    Section(header: Text("FOOD")) {
                        NavigationLink(
                            destination: FoodDetailView(organization:org), label: {
                                Text("")
                                Image(org.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                                    .cornerRadius(4.0)
                                    .padding(.vertical, 4)
                                VStack {
                                    Text(org.title)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                }
                            })
                        
                    }
                    ForEach(shelterOrganizationItem){ org in
                        Section(header: Text("SHELTER")) {
                            NavigationLink(
                                destination: ShelterDetailView(organization:org), label: {
                                    Image(org.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 70)
                                        .cornerRadius(4.0)
                                        .padding(.vertical, 4)
                                    VStack {
                                        Text(org.title)
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                    }
                                })
                            
                        }
                    }
                    ForEach(ClothingOrganizationItem){ org in
                        Section(header: Text("CLOTHING")) {
                            NavigationLink(
                                destination: ClothingDetailView(organization:org), label: {
                                    Image(org.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 70)
                                        .cornerRadius(4.0)
                                        .padding(.vertical, 4)
                                    VStack {
                                        Text(org.title)
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                    }
                                })
                            
                        }
                    }
                    ForEach(HealthCareOrganizationItem){ org in
                        Section(header: Text("HEALTHCARE")) {
                            NavigationLink(
                                destination: HealthCareDetailViews(organization:org), label: {
                                    Image(org.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 70)
                                        .cornerRadius(4.0)
                                        .padding(.vertical, 4)
                                    VStack {
                                        Text(org.title)
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                    }
                                })
                            
                        }
                    }
                }
            }
            .navigationTitle("SEE ALL")
          
        }
        
    }
    
    
    struct CatagorizeALL_Previews: PreviewProvider {
        static var previews: some View {
            FoodSearchView()
        }
    }
    
}
