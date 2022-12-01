//
//  UserDetailsView.swift
//  UserList
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct UserDetailsView: View {
    
    @Binding var user:User
    
    var body: some View {
        VStack{
            HStack{
                TextField("Title key", text: $user.name)
            }
        }
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    
    @State static var user = User.defaultuser()
    
    static var previews: some View {
        UserDetailsView(user: $user)
    }
}
