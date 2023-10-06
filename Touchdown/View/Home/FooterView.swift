//
//  FooterView.swift
//  Touchdown
//
//  Created by Micah Hodge on 7/14/23.
//

import SwiftUI

struct FooterView: View {
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
            
            Text("Copyright © Micah Hodge\nAll rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
        .padding(20)
    }
}

// MARK: - PREVIEW

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
