//
//  AlbumDownloader.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import Foundation

class AlbumDownloader:ObservableObject{
    @Published var albums = Albums()
    
    func download(urlString:String){
        if let url = URL(string: urlString){
            let urlrequest = URLRequest(url: url)
            URLSession.shared.dataTask(with: urlrequest){ data, response, err in
                if let d = data{
                    if let albums = try? JSONDecoder().decode(Albums.self, from: d){
                        DispatchQueue.main.async {
                            self.albums = albums
                        }
                    }
                }
            }.resume()
        }
    }
}
