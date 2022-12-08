//
//  PostsListViewModel.swift
//  IOS Concurrency
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import Foundation

class PostsListViewModel: ObservableObject {
    @Published var posts: [Post] = []
    var userId: Int?

    func fetchPosts(){
        if let userId = userId {
            let urlString = "https://jsonplaceholder.typicode.com/users/\(userId)/posts"
            let apiService = APIService(urlString: urlString)

            apiService.getJSON { (result: Result<[Post], APIError>) in
                switch result {
                case .success(let posts):
                    DispatchQueue.main.async {
                        self.posts = posts
                    }
                case .failure(let error):
                    print("LOG: error", error)
                }
            }
        }
    }
}

extension PostsListViewModel {
    convenience init(forPreview: Bool = false) {
        self.init()
        if forPreview {
            self.posts = Post.mockSingleUsersPostsArray
        }
    }
}
