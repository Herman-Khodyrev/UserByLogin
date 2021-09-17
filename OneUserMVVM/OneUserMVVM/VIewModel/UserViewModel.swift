//
//  UserViewModel.swift
//  OneUserMVVM
//
//  Created by Герман on 15.09.21.
//

import UIKit
import Alamofire

protocol UserViewModelDelegate: class {
    
    func reloadData()
    func showError(error: String)

}


class UserViewModel{
    
    weak var delegate : UserViewModelDelegate?
    
    private var userDescription: User?
    
    init (delegate: UserViewModelDelegate){
        
        self.delegate = delegate
        
    }
    
    
    func getUser(login: String){
        APIManager.shared.getContent(login: login){
        
            (userDescription, error) in
            if let error = error{
              
                self.delegate?.showError(error: error)
            } else if let userDescription = userDescription{
                self.userDescription = userDescription
                self.delegate?.reloadData()
            }
            
        }
        
    }
    
    func getName() -> String?{
        return userDescription?.name
    }
    func getCompany() -> String{
        return "Компания(-ии): \(userDescription?.company ?? "")"
    }
    
    func getImage() -> UIImage? {
        guard let stringUrl = userDescription?.avatar_url else { return nil }
        guard let url = URL(string: stringUrl) else { return nil }
        let data = try? Data(contentsOf: url)
        guard let imageData = data else { return nil }
        guard let image = UIImage(data: imageData) else { return nil }
        return image
    }
    
    func getLocation() -> String?{
        return "Местонахождение: \(userDescription?.location ?? "")"
    }
    
    func getEmail() -> String{
        return "Email: \(userDescription?.email ?? "")"
    }
    
    func getCreation() -> String?{
        return "Создано: \(userDescription?.created_at ?? "")"
    }
    
    func getUpdate() -> String?{
        return "Обновлено: \(userDescription?.updated_at ?? "")"
    }
    
    func getBlog() -> String?{
        return "Блог: \(userDescription?.blog ?? "")"
    }
    
    func getFollowers() -> String{
        return "Подписчики: \(userDescription?.followers ?? 0)"
    }
    
    func getFollowing() -> String{
        return "Подписки: \(userDescription?.following ?? 0)"
    }
}
