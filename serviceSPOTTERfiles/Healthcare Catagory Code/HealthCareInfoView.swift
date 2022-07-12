//
//  HealthCareInfoView.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/14/21.
//

import SwiftUI
struct HealthCareInfoView: View {
    var organization: HealthCareOrganizationItems
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            Text(organization.title)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
        })
    }
}

struct HealthCareInfoView_Previews: PreviewProvider {
    static var previews: some View {
        HealthCareInfoView(organization: HealthcareOrganizationItemsList.HealthcareFirstTen.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
        
    }
}
