//
//  CategorySection.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/14/24.
//

import SwiftUI

struct CategorySection: View {
    var body: some View {
        VStack(spacing:20){
            SectionHeader(title: "Head Accesories")
                .padding(.horizontal)
            
            VStack{
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    CategoryListItem()
                }
            }
        }
    }
}

#Preview {
    CategorySection()
}
