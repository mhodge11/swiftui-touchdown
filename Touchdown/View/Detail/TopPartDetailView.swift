//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Micah Hodge on 7/14/23.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } //: VStack
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        } //: HStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

// MARK: - PREVIEW

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}