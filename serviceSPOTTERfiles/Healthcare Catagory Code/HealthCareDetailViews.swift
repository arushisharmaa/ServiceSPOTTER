//
//  HealthCareDetailViews.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/10/21.
//

import SwiftUI

struct HealthCareDetailViews: View {
    var organization: HealthCareOrganizationItems
    @State var showFavoritesOnly = false
    @ObservedObject var favorites4 = Favorites4()
    @Environment(\.openURL) var openURL
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
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal)
                HStack (spacing:10){
                    Label("\(organization.phoneNumber)", systemImage: "phone")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                    Label("\(organization.hours)", systemImage: "clock.fill")
                        .font(.subheadline)
                        .lineLimit(5)
                        .multilineTextAlignment(.center)
                }
                
                .padding(.horizontal)
                VStack(alignment: .center, spacing: 0, content: {
                    
                    
                    ScrollView(.vertical, showsIndicators: true, content: {
                        Text(organization.upcomingEvent)
                            .font(.system(.body, design: .rounded))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                    }) //SCTOLL
                }) // VSTACK
                .padding(.horizontal)
                
                Link(destination: organization.url, label: {
                    Text("Link to the Website")
                        .bold()
                        .font(.title2)
                        .frame(width: 300, height:50)
                        .background(Color(.systemRed))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                })
                .padding()
                HStack {
                    Image(systemName: "star")
                        .resizable()
                        .scaledToFit()
                        .frame( height:23)
                        .foregroundColor(.yellow)
                    Button(favorites4.contains(organization) ? "Unlike" : "Like")
                            {
                        if self.favorites4.contains(self.organization) {
                            self.favorites4.remove(self.organization)
                        } else {
                            self.favorites4.add(self.organization)
                        }
                    
                    }
                    Button(action: {
                            openURL(URL(string: "https://forms.gle/dCtUPL8raUGmMZfQA")!)                  })  {
                        Image(systemName: "text.bubble")
                            .resizable()
                            .scaledToFit()
                            .frame( height:20)
                            .foregroundColor(.red)
                        Text("Comment")
                    }
                    Button(action: {
                            openURL(URL(string: "https://forms.gle/B9BBefi51uVwd3tD6")!)                  })   {
                        Image(systemName: "hand.raised")
                            .resizable()
                            .scaledToFit()
                            .frame( height:20)
                            .foregroundColor(.gray)
                        Text("Volunteer")
                    }
                }
            })
            .environmentObject(favorites4)
            
        }) //SCROLL END
        
        // VSTACK End
        .padding(.trailing,30)
        .padding(.leading,10)
        .ignoresSafeArea(.all, edges: .all)
    }
}
struct HealthCareDetailViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HealthCareDetailViews(organization: HealthcareOrganizationItemsList.HealthcareFirstTen.first!)
                .previewLayout(.fixed(width: 375, height: 812))
        }
    }
}

