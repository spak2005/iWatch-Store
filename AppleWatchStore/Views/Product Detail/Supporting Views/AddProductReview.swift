//
//  AddProductReview.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/21/24.
//

import SwiftUI

struct AddProductReview: View {
    
    @State private var rating: Float = 3.0
    @State private var reviewSummary = ""
    @State private var title = ""
    @State private var name = ""
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Title", text: $title)
                    TextField("Your Name", text: $name)
                }
                Section{
                    TextEditor(text:$reviewSummary)
                    HStack{
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            Image(systemName:"star")
                                .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        }
                    }
                }header: {
                    Text("Write a review")
                }
            }
            .toolbar{
                ToolbarItem(placement:.topBarTrailing){
                    Button("Save"){}
                }
            }
        }
    }
}

#Preview {
    AddProductReview()
}
