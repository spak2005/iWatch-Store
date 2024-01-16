//
//  FilterView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/16/24.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                content
            }
            .background(Color(.baseBackground))
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    closeBtn
                }
            }
            .navigationTitle("PRODUCT FILTERS")
            .safeAreaInset(edge: .bottom){
                filterStatus
            }
        }
    }
    var content: some View{
        VStack(spacing: 50){
            ForEach(0 ..< 3) { item in
                FilterSectionView()
            }
        }
        .padding(.top, 40)
    }
    var filterStatus: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white.opacity(0.2)))
                .frame(height: 125)
                .background(
                    .ultraThinMaterial,
                    in: Rectangle()
                )
            Button(action: {}) {
                Text("FILTER (0 ITEMS)")
                    .condensed(.medium, size: 24)
                    .foregroundStyle(.white)
            }
            .buttonStyle(.customBorderedBlack)
            .padding(.horizontal, 20)
        }
        .offset(y:32)
        .frame(height: 125)
    }
    
    var closeBtn: some View{
        Button(action: {}){
            Text("CLOSE")
                .foregroundStyle(.primary)
                .condensed(.bold, size: 18)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    FilterView()
}
