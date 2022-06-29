//
//  DetailView.swift
//  SwiftUINavList
//
//  Created by Dmitriy Budanov on 26.06.2022.
//

import SwiftUI

struct DetailView: View {
    let famous: FamousPeople
    
    var body: some View {
        VStack {
            Image(famous.imageName)
                .resizable()
                .frame(maxWidth: 450, maxHeight: 600)
                .aspectRatio(contentMode: .fit)
            Text("\(famous.famous)")
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(3)
        }
        Text("\(famous.title)")
            .font(.subheadline)
        Divider()
        Text(famous.description)
            .multilineTextAlignment(.leading)
            .lineLimit(20)
            .padding()
            .navigationBarTitle(Text(famous.title), displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(famous: data[1])
    }
}

