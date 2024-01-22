//
//  WristItem.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/21/24.
//

import SwiftUI

struct WristItem: View {
    var body: some View {
        VStack (alignment:.leading){
            Spacer()
            Text("Large")
                .condensedLowercased(.bold, size: 24)
            Text("Fits 165-200mm Wrists")
                .condensed(.light, size: 16)

        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomLeading)
        .frame(height: 80)
        .padding()
    }
}

#Preview {
    WristItem()
}
