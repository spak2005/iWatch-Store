//
//  ProductsView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/14/24.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                content
            }
            .navigationTitle("APPLE WATCHES")
            .navigationBarTitleDisplayMode(.large)
        }
        
    }
    var content : some View{
        ProductsGridView()
    }
}

#Preview {
    ProductsView()
}
