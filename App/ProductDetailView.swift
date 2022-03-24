//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // MARK: Navbaer
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // MARK: Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // MARK: Detail Top Part
            TopPartDetailView()
                .zIndex(1)
                .padding(.horizontal)
            
            // MARK: Detail Bottom Part
            VStack(alignment: .center, spacing: 0, content: {
                // MARK: Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                // MARK: Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } // Scroll
                
                // MARK: Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)

                
                // MARK: Add to Cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
            }) // VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -100)
            )
        }) // VSTack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
