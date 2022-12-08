//
//  PostsListView.swift
//  IOS Concurrency
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import SwiftUI

struct PostsListView: View {
    #warning("remove the forPreview argument or set it to false before comminting")
    @StateObject var viewModel = PostsListViewModel(forPreview: true)
    let userId: Int?

    var body: some View {
        List{
            ForEach(viewModel.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.title)
                    Text(post.body)
                }
            }
        }
        .navigationTitle("Posts")
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(.plain)
        .onAppear {
            viewModel.userId = userId
            viewModel.fetchPosts()
        }
    }
}

struct PostsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostsListView(userId: 1)
        }
    }
}
