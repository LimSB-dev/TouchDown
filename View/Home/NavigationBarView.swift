//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/23.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: Property
    
    @State private var isAnimating: Bool = false
    
    // MARK: Body
    var body: some View {
        HStack() {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) // Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -20)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.8)) {
                        isAnimating.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 15, y: -10)
                } // ZStack
            }) // Button
        } // HStack
    }
}

// MARK: Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
