//
//  DetailView.swift
//  Stech News
//
//  Created by suhail on 15/09/22.
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
        DetailView(url: "https://wwe.wwe.com")
    }
}

