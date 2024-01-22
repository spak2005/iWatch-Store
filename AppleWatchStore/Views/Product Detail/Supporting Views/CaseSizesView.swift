//
//  CaseSizeView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/21/24.
//

import SwiftUI

struct CaseSizeView: View {
    var body: some View {
        VStack{
            SectionHeader(title: "Case Sizes")
                .padding(.bottom)
            
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Button(action:{}){
                    SizeItem().contentShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.baseMediumGray, lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    CaseSizeView()
}
