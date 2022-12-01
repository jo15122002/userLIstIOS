//
//  UserDetailsView.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct UserDetailsView: View {
    
    @Binding var user:User
    @ObservedObject var albumDownloader = AlbumDownloader()
    
    var body: some View {
            VStack{
                HStack{
                    TextField("Title key", text: $user.name)
                }
                List($albumDownloader.albums){album in
                    NavigationLink() {
                        AlbumImagesView(albumId: album.id)
                    }label: {
                        AlbumCellView(album: album)
                    }
                }
            }
        .onAppear{
            if(albumDownloader.albums.count <= 1){
                albumDownloader.download(urlString: "https://jsonplaceholder.typicode.com/albums?userId=\(user.id)")
            }
        }
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    
    @State static var user = User.defaultuser()
    @State static var album = Album.defaultAlbum()
    
    
    static var previews: some View {
        UserDetailsView(user: $user)
    }
}
