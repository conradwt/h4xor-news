//
//  ContentView.swift
//  H4XOR News
//
//  Created by Conrad Taylor on 1/8/20.
//  Copyright © 2020 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var networkManager = NetworkManager()
  
  var body: some View {
    NavigationView {
      List(networkManager.posts) { post in
        NavigationLink(destination: DetailView(url: post.url)) {
          HStack {
            Text(String(post.points))
            Text(post.title)
          }
        }
      }
      .navigationBarTitle("H4XOR News")
    }
    .onAppear {
      self.networkManager.fetchData()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

//let posts = [
//  Post(id: "1", title: "Hello"),
//  Post(id: "2", title: "Bonjour"),
//  Post(id: "3", title: "Halo")
//]
