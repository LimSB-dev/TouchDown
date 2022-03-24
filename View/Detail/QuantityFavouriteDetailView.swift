//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/24.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter != 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            }) // Minus Button
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter != 10 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            }) // Plus Button
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }) // Heart Button
        }) // HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
