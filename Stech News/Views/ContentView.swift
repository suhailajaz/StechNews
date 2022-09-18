//
//  ContentView.swift
//  Stech News
//
//  Created by suhail on 15/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
       
        NavigationView{
            
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
               // Text("\(post.points)   \(post.title)")
                    
                
            }
            
            .navigationTitle("Stech News")
            .navigationBarTitleDisplayMode(.large)
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


