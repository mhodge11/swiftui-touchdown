//
//  FeatureTabView.swift
//  Touchdown
//
//  Created by Micah Hodge on 7/14/23.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(.gray)
    }
}
