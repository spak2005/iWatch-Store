//
//  WifiCellularView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/21/24.
//

import SwiftUI

struct WifiCellularView: View {
    var body: some View {
        HStack{
            Image(.iconWifi)
            
            HStack{
                Image(systemName: "plus")
                Image(.icon5G)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
        .frame(height: 80)
        .padding()
        
    }
    
}

#Preview {
    WifiCellularView()
}
