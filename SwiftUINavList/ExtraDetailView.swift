//
//  ExtraDetailView.swift
//  SwiftUINavList
//
//  Created by Dmitriy Budanov on 29.06.2022.
//

import SwiftUI

struct ExtraDetailView: View {
    let famous: FamousPeople
    
    var body: some View {
        NavigationLink {
            DetailView(famous: famous)
                } label: {
                    Text("Переход на DetailView")
                }
                .navigationTitle("ExtraDetailView")
    }
}

struct ExtraDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(famous: data[0])
    }
}
