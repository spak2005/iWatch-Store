//
//  FavouriteView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/14/24.
//

import SwiftUI

struct FavouriteView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:70){
                    ForEach(0 ..< 3) { item in
                        NavigationLink {} label: {
                            WideProductItem()
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.top, 60)
            }
            .background(Color(.baseBackground))
            .navigationTitle("MY FAVOURITE")
            .navigationBarTitleDisplayMode(.large)
            .padding(.horizontal)
        }
    }
}

#Preview {
    FavouriteView()
}
