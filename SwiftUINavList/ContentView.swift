//
//  ContentView.swift
//  SwiftUINavList
//
//  Created by Dmitriy Budanov on 26.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var famous = data
    @State var showModalView: Bool = false
      var body: some View {
          TabView {
            NavigationView {
                FamousListNav(famousPeople: $famous, tabTitle: "All Famous")
                DetailView(famous: data[0])
            }
            .tabItem({
                Text("Navigation")
            }).navigationTitle("Famous")
              
              VStack {
                  Button(action: {
                      self.showModalView = true
                  }) {
                      Text("\(famous[0].famous)")
                  }.sheet(isPresented: self.$showModalView) {
                      DetailView(famous: data[0])
                  }
                  Button(action: {
                      self.showModalView = true
                  }) {
                      Text("\(famous[1].famous)")
                  }.sheet(isPresented: self.$showModalView) {
                      DetailView(famous: data[1])
                  }
                  Button(action: {
                      self.showModalView = true
                  }) {
                      Text("\(famous[2].famous)")
                  }.sheet(isPresented: self.$showModalView) {
                      DetailView(famous: data[2])
                  }
                  
              }
              .tabItem({ Text("Modal") })
              
              NavigationView {
                          NavigationLink {
                              ExtraDetailView(famous:famous[0] )
                          } label: {
                              Text("Переход на ExtraDetailView")
                          }
              }.tabItem({Text("NavInNav")})
              }
          
      }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FamousListNav: View {
  @Binding var famousPeople: [FamousPeople]
  let tabTitle: String
  
  var showFamous: [FamousPeople] {
    famousPeople
  }
  
  var body: some View {
    List(showFamous) { famous in
      NavigationLink(
        destination: DetailView(famous: famous)) {
        Text("\(famous.famous)")
        }
      }
    }
  }



