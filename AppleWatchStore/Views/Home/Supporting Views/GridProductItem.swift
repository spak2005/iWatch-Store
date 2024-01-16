//
//  GridProductItem.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/11/24.
//

import SwiftUI

struct GridProductItem: View {
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
                ZStack{
                    Image(.sportBandProductRedL)
                        .resizable()
                        .frame(width:250, height: 250)
                    
                    Image(.aluminumMidnightL)
                        .resizable()
                        .frame(width:250, height: 250)
                }
                VStack {
                    Text("$").ultraLight() + Text("999").heavy()
                    Text("Starlight Aluminium Case")
                        .condensed(.bold, size: 14)
                    Text("Braided Solo Loop")
                        .condensed(.light, size: 14)
                }
                .foregroundStyle(.primary)
                .padding(.bottom, 5)
                
                HStack{
                    ForEach(0 ..< 3){ item in
                        Circle()
                            .frame(width:20, height:20)
                    }
                    
                }
                .padding(.bottom)
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Constants.gradient)
        )
        .overlay(alignment: .topTrailing){
            Constants.heart
        }
    }
}

#Preview {
    GridProductItem()
}
