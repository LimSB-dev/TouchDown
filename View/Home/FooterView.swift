//
//  FooterView.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/23.
//

import SwiftUI

struct FooterView: View {
    // MARK: Property
    
    // MARK: Body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Footetview Footetview Footetview Footetview Footetview Footet Footetview Footetview Footetview Footetview")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("CopyRight by Robert Petrss\nAll rigth reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } // VStack
    }
}

// MARK: PreView
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
