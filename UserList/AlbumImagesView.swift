//
//  AlbumDetails.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct AlbumImagesView: View {
    var albumId:Int
    @ObservedObject var albumImagesDownloader = AlbumImagesDownloader()
    
    var body: some View {
        VStack{
            List(albumImagesDownloader.download(urlString: <#T##String#>))
        }.onAppear{
            albumImagesDownloader.download(urlString: "https://jsonplaceholder.typicode.com/photos?albumId=\(albumId)")
        }
    }
}

struct AlbumDetails_Previews: PreviewProvider {
    
    @State static var album = Album.defaultAlbum()
    @State static var user = User.defaultuser()
    
    
    static var previews: some View {
        AlbumImagesView(albumId: album.id)
    }
}
