//
//  AlbumDetails.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct AlbumDetailsView: View {
    
    @Binding var album:Album
    var userId:Int
    
    var body: some View {
        VStack{
            Text("Hello world")
        }
    }
}

struct AlbumDetails_Previews: PreviewProvider {
    
    @State static var album = Album.defaultAlbum()
    @State static var user = User.defaultuser()
    
    
    static var previews: some View {
        AlbumDetailsView(album: $album, userId: user.id)
    }
}
