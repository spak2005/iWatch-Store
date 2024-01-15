//
//  CardView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/10/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Constants.gradient)
                    .frame(height: 245.0/1.55)
                VStack {
                    Image(.watchCard40Ultra)
                    VStack {
                        VStack(alignment: .center, spacing: -5) {
                            Text("Apple Watch Ultra")
                                .condensed(.light, size: 16)
                            Text("Ready for Adventure")
                                .condensedLowercased(.bold, size: 24)
                        }
                        Button(action: {}){
                        Text("Shop")
                                .condensedLowercased(.medium, size: 24)
                                .foregroundStyle(.white)
                        }
                        .buttonStyle(.customBorderedBlack)
                    }
                    .foregroundStyle(.primary)
                    .padding(.horizontal)
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    CardView()
}
