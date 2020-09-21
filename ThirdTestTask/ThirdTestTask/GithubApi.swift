//
//  GithubApi.swift
//  ThirdTestTask
//
//  Created by Timur Karimov on 18.09.2020.
//

import Foundation
import Alamofire


class GithubApi {
    
    
    static func askToWrite() {
        print("Введите название репозитория на GitHub: ")
        if let name = readLine() {
            GithubApi.getRepos(of: name)
        }
    }
    
    static func getRepos(of user: String) {
        let url = "https://api.github.com/users/\(user)/repos"
        
        
        AF.request(url).responseJSON { response in
            //print(String(data: response.data!, encoding: .utf8))
            guard let data = response.data else {return}
            if let list = try? JSONDecoder().decode([RepoItem].self, from: data)  {
                if list.count == 0 {
                    print("Репозитории не найдены")
                } else {
                    print("Список репозиториев:")
                    for i in list {
                        print(i.name)
                    }
                }
            } else {
                print("Не удалось получить данные")
            }
            askToWrite()
            
            
            
            
        }
    }
}
