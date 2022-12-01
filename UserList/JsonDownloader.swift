//
//  JsonDownloader.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import Foundation

class JsonDownloader:ObservableObject{
    @Published var users = Users()
    
    func download(urlString:String){
        if let url = URL(string: urlString){
            let urlrequest = URLRequest(url: url)
            URLSession.shared.dataTask(with: urlrequest){ data, response, err in
                if let d = data{
                    if let users = try? JSONDecoder().decode(Users.self, from: d){
                        DispatchQueue.main.async {
                            self.users = users
                        }
                    }
                }
            }.resume()
        }
    }
}
