//
//  PopularSection.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/11/24.
//

import SwiftUI

struct PopularSection: View {
    var body: some View {
        VStack{
            SectionHeader(title: "Popular", icon: "slider.horizontal.3")
                .padding(.horizontal)
            
            LazyVGrid(columns: Constants.columns, spacing: 20){
                ForEach(0..<4){ _ in
                    NavigationLink {
                        
                    }label:{
                        GridProductItem()
                    }
                    .buttonStyle(.plain)
                }
            }
            
        }
    }
}

#Preview {
    NavigationStack {
        PopularSection()
    }
}
