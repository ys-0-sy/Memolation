//
//  ContentView.swift
//  Memolation
//
//  Created by saito on 2020/03/26.
//  Copyright © 2020 ys-0-sy. All rights reserved.
//

import SwiftUI
struct ContentView: View {
  @State private var selection = 0

  var body: some View {
    TabView {
      TranslateView()
        .tabItem {
          VStack {
            Image("translation")
            Text("Translation")
          }
        }
      .tag(0)
      CardsView()
        .tabItem {
          VStack {
        Image("cards")
        Text("Cl!ck")
          }
      }
      .tag(1)
      NavigationView {
        ListsView()
      }
        .tabItem {
          VStack {
            Image("list")
            Text("List")
          }
        }
      .tag(2)
      NavigationView {
        SettingsView()
      }
        .tabItem {
          VStack {
            Image("settings")
            Text("Settings")
          }
      }
    .tag(3)
    }.accentColor(Color("SecondBaseColor"))
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
