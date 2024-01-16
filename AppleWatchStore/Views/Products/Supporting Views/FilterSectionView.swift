//
//  FilterSectionView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/16/24.
//

import SwiftUI

struct FilterSectionView: View {
    var body: some View {
        VStack{
            SectionHeader(title: "SECTION TITLE HERE")
            
            LazyVGrid(columns: Constants.filterColumns, spacing: 10){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    sectionItem
                }
            }
        }
        .padding(.horizontal)
    }
    var sectionItem: some View{
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 24, height: 24)
                Image(.checkmark)
            }
            Text("Title goes here")
                .condensed(.regular, size: 16)
            Spacer()
        }
    }
}

#Preview {
    FilterSectionView()
}
