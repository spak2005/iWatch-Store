//
//  AppleCareView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/21/24.
//

import SwiftUI

struct AppleCareView: View {
    var body: some View {
        VStack(spacing: 20){
            SectionHeader(title: "AppleCare + Coverage")
                .padding(.bottom)
            addApplecare
            noAppleCare
        }
        .padding(.horizontal)
    }
    var noAppleCare: some View{
        Button(action:{}){
            VStack(alignment:.leading){
                Text("No AppleCare+")
                    .condensed(.bold, size: 18)
            }
            .padding(.vertical, 20)
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .cornerRadius(10)
            .contentShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.baseMediumGray, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
    }
    var addApplecare: some View{
        Button(action:{}){
            VStack(alignment:.leading){
                header
                content
                
            }
            .padding(.vertical, 20)
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .cornerRadius(10)
            .contentShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.baseMediumGray, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
    }
    var header: some View{
        VStack {
            HStack (alignment: .lastTextBaseline) {
                Image(systemName: "apple.logo")
                    .foregroundStyle(.baseAppleRed)
                Text("Add Apple Care+")
                    .condensed(.bold, size: 18)
                Spacer()
                Text("$99 or $4.99/mo")
                    .condensed(.regular, size: 14)
            }
            Divider()
        }
        
    }
    var content: some View{
        VStack(alignment:.leading) {
            HStack(alignment:.firstTextBaseline) {
                Text("•")
                Text("Unlimited Repairs for accidental damage\n protection")
            }
            HStack(alignment:.firstTextBaseline) {
                Text("•")
                Text("Unlimited Repairs for accidental damage\n protection")
            }
            HStack(alignment:.firstTextBaseline) {
                Text("•")
                Text("Unlimited Repairs for accidental damage\n protection")
            }
        }
        .foregroundStyle(.baseMediumGray)
    }
}

#Preview {
    AppleCareView()
}
