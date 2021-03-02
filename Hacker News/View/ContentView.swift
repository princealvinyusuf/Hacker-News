//
//  ContentView.swift
//  Hacker News
//
//  Created by Prince Alvin Yusuf on 28/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){ item in
                NavigationLink(
                    destination: DetailView(url: item.url),
                    label: {
                        HStack {
                            Text(String(item.points))
                            Text(item.title)
                        }
                    })
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
