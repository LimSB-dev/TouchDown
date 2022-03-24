//
//  ContentView.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: ProPerty
    
    @EnvironmentObject var shop: Shop
    
    // MARK: Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    // MARK: Header
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            // MARK: Content
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(minHeight: UIScreen.main.bounds.height / 3)
                           
                            CategoryGridView()
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } // Loop
                            }) // Grid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            // MARK: Footer
                            FooterView()
                                .padding(.horizontal)
                        } // VStack
                    }) // Scroll

                } // VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } // ZStack
        .ignoresSafeArea(.all, edges: .top)
    } // VStack
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
            .previewDevice("iPhone 13")
    }
}
