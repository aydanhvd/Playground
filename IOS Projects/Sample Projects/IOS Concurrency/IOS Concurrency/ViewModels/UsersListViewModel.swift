//
//  UsersListViewModel.swift
//  IOS Concurrency
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import Foundation

class UsersListViewModel: ObservableObject {
    @Published var users: [User] = []

    func fetchUsers(){
        let usersUrlString = "https://isonplaceholder.typicode.com/users"
        let apiService = APIService(urlString: usersUrlString)
        apiService.getJSON { (result: Result<[User], APIError>) in
            switch result {
            case .success(let users):
                DispatchQueue.main.async {
                    self.users = users
                }
            case .failure(let error):
                print("LOG: error", error)
            }
        }
    }
}

extension UsersListViewModel {
    convenience init(forPreview: Bool = false) {
        self.init()
        if forPreview {
            self.users = User.mockUsers
        }
    }
}
