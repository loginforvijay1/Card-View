//
//  PersonCardsView.swift
//  CardsView
//
//  Created by Vemireddy Vijayasimha Reddy on 31/03/24.
//

import SwiftUI

struct PersonCardsView: View {
    let person: Person
    
    var body: some View {
        VStack {
            ZStack {
                Image(person.headerImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 80)
                    .clipped()
                
                Image(person.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                    .clipShape(Circle())
                    .offset(y: 40)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
            .overlay(alignment: .topTrailing) {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(.white)
                        .padding(8)
                    
                })
            }
            
            VStack {
                Button {
                    
                } label: {
                    Text("Follow")
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                        .overlay {
                            Capsule()
                                .stroke(lineWidth: 2)
                            
                        }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                
                HStack {
                    
                    Text(person.name)
                        .fontWeight(.bold)
                    
                    Text(". \(person.followerCount)")
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                Text(person.jobTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom])
            }
        }
        .background(Color(.tertiarySystemFill))
        .cornerRadius(12)
    }
}

#Preview {
    PersonCardsView(person: person1).previewLayout(.sizeThatFits)
}
