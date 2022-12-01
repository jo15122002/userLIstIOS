//
//  AlbumImagesDownloader.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import Foundation

import Foundation

class AlbumImagesDownloader:ObservableObject{
    @Published var images = AlbumImages()
    
    func download(urlString:String){
        if let url = URL(string: urlString){
            let urlrequest = URLRequest(url: url)
            URLSession.shared.dataTask(with: urlrequest){ data, response, err in
                if let d = data{
                    if let images = try? JSONDecoder().decode(AlbumImages.self, from: d){
                        DispatchQueue.main.async {
                            self.images = images
                        }
                    }
                }
            }.resume()
        }
    }
}
