//
//  SwiftUIView.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/10/21.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
            }
        }
        
     }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
