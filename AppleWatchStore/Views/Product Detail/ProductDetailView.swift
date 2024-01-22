//
//  ProductDetailView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/21/24.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        ZStack{
            ScrollView {
                header
                colors
                VStack(spacing:50){
                    ProductDetailDescriptionView()
                    CaseSizeView()
                    WristSizesView()
                    ConnectivityView()
                    AppleCareView()
                }
            }
        }
        .safeAreaInset(edge:.bottom){
            ZStack {
                addToCart
            }
            .frame(height: 80)
            .padding(.vertical, 10)
            .background(.ultraThinMaterial)
        }
    }
    var header: some View{
        ZStack(alignment:.bottom){
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .fill(Constants.gradient)
                    .frame(height: 280.0/1.1)
            }
            ZStack{
                Image(.sportBandProductRedL)
                    .resizable()
                    .frame(width:405, height: 405)
                Image(.aluminumMidnightL)
                    .resizable()
                    .frame(width:405, height: 405)
            }
        }
        .padding(.horizontal)
    }
    var colors: some View{
        VStack{
            SectionHeader(title: "Brand Colors")
            
            HStack{
                ForEach(0 ..< 3) { item in
                    Circle()
                        .fill(Color.gray)
                    .frame(width: 32, height: 32)
                }
                Spacer()
            }
        }
        .padding(.horizontal)
    }
    var addToCart: some View{
        Button(action:{}){
            Text("Add To Cart")
                .condensedLowercased(.medium, size: 24)
                .foregroundStyle(.white)
        }
        .buttonStyle(.customBorderedBlack)
        .padding(.horizontal)
    }
    
        
}

#Preview {
    ProductDetailView()
}
