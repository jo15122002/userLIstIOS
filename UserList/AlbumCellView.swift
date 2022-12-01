//
//  AlbumCellView.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct AlbumCellView: View {
    @Binding var album:Album
    var body: some View {
        Text(album.title)
    }
}

struct AlbumCellView_Previews: PreviewProvider {
    @State static var album = Album.defaultAlbum()
    static var previews: some View {
        AlbumCellView(album: $album)
    }
}
