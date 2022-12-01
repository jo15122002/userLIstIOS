//
//  ContentView.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var downloader = JsonDownloader()
    
    @State var userList = Users()
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                
                List($downloader.users){user in
                    NavigationLink{
                        UserDetailsView(user: user)
                    } label: {
                        UserCellView(user: user)
                    }
                }.onAppear{
                    if(downloader.users.count <= 1){
                        downloader.download(urlString: "https://jsonplaceholder.typicode.com/users")
                    }
                }.navigationTitle("User list")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
