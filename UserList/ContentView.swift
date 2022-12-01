//
//  ContentView.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var downloader = JsonDownloader()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        List{
            ForEach(downloader.users) { user in
                Text(user.username)
            }
        }.onAppear{
            downloader.download(urlString: "https://jsonplaceholder.typicode.com/users")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
