//
//  DetailView.swift
//  H4XOR News
//
//  Created by Conrad Taylor on 1/8/20.
//  Copyright © 2020 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  let url: String?
  
  var body: some View {
    WebView(urlString: url)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(url: "https://www.google.com")
  }
}
