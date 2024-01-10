//
//  BrowseSection.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/10/24.
//

import SwiftUI

struct BrowseSection: View {
    var body: some View {
        VStack(spacing:30){
            SectionHeader(title: "Browse by model")
                .padding(.horizontal)
                .padding(.bottom)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(0..<4){ _ in
                        CardView()
                            .frame(width: UIScreen.main.bounds.width-30)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    }
                }
            }
            .safeAreaPadding(.horizontal, 10)
            .scrollTargetBehavior(.paging)
        }
    }
}

#Preview {
    BrowseSection()
}
