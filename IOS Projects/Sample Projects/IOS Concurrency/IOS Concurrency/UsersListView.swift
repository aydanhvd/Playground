//
//  UsersListView.swift
//  IOS Concurrency
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import SwiftUI

struct UsersListView: View {
#warning("remove the forPreview argument or set it to false before comminting")
    @StateObject var viewModel = UsersListViewModel(forPreview: true)
    var body: some View {
        NavigationView {
            List {

                ForEach(viewModel.users){ user in
                    NavigationLink {
                        PostsListView(userId: user.id)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.title)
                            Text(user.email)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .listStyle(.plain)
            .onAppear{
                viewModel.fetchUsers()
            }
        }
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
