//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } // Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 13")
            .background(Color.gray)
    }
}
