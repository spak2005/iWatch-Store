//
//  SectionHeader.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/10/24.
//

import SwiftUI

struct SectionHeader: View {
    var title: String
    var icon: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack{
                Text(title)
                    .condensedLowercased(.bold, size: 24)
                Spacer()
                if icon.isNotEmpty {Image(systemName: icon)}
            }
            Divider()
        }
    }
}

#Preview {
    VStack {
//        SectionHeader(title: "Popular")
        SectionHeader(title: "Popular", icon: "slider.horizontal.3")
    }
}
