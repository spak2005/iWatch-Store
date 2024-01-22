//
//  ProductDetailDescriptionView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/21/24.
//

import SwiftUI

struct ProductDetailDescriptionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Midnight Aluminium Case with Nike Sports Band")
                    .condensed(.bold, size: 34)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(minWidth:0, maxWidth: .infinity)
                
                HStack(alignment: .center){
                    Image(systemName: "star")
                        .font(.system(size: 16))
                        .symbolVariant(.fill)
                        .foregroundStyle(.baseGold)
                    
                    Text("5.0")
                        .condensed(.bold, size: 22)
                    
                    Button(action:{}){
                        Text("(999 Reviews)")
                            .condensed(.light, size: 16)
                    }
                    
                    Spacer()
                    Button(action:{}){
                        Text("Add Review".uppercased())
                            .condensed(.light, size: 16)
                    }
                }
                .padding(.bottom, 5)
                
                Text("The aluminium is lightweight and is made from 100 percent recycled aerospace-grade alloy.\n\nThe Nike Sports Band is made from a high performance fluorolastomer with compression-moulded perforations for breathability")
                    .condensed(.light, size: 16)

            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    ProductDetailDescriptionView()
}
